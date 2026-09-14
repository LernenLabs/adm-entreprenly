-- Permite que el README tenga contenido distinto en GitHub y en el PDF.
--
--   <!-- pdf:omit-start -->  ... <!-- pdf:omit-end -->
--        Se ve en GitHub, se descarta del PDF.
--
--   <!-- pdf:only
--        \clearpage
--   -->
--        No se ve en GitHub (es un comentario HTML), se inyecta como LaTeX
--        en el PDF.

-- Los <br> dentro de una celda de tabla se pierden al pasar a LaTeX, y el
-- contenido de la celda queda todo pegado. Convertirlos en saltos de linea de
-- verdad deja que pandoc elija como representarlos en cada contexto.
function RawInline(el)
  if el.format == 'html' and el.text:match('^<br%s*/?>$') then
    return pandoc.LineBreak()
  end
end

-- Al desactivar markdown_in_html_blocks, Pandoc conserva cada bloque HTML
-- completo. Volver a leerlo con el lector HTML permite que tablas, imagenes y
-- contenedores se conviertan en elementos nativos que el escritor LaTeX si
-- puede representar.
function RawBlock(el)
  if el.format ~= 'html' or el.text:match('pdf:') then
    return nil
  end

  local ok, parsed = pcall(pandoc.read, el.text, 'html')
  if ok and #parsed.blocks > 0 then
    return parsed.blocks
  end

  return nil
end

local function contains_raw_html(inlines)
  for _, inline in ipairs(inlines) do
    if inline.t == 'RawInline' and inline.format == 'html' then
      return true
    end
  end
  return false
end

local function convert_mixed_html_block(block)
  if not contains_raw_html(block.content) then
    return nil
  end

  local html = pandoc.write(pandoc.Pandoc({ block }), 'html')
  local ok, parsed = pcall(pandoc.read, html, 'html')
  if ok and #parsed.blocks > 0 then
    return parsed.blocks
  end

  return nil
end

function Para(el)
  return convert_mixed_html_block(el)
end

function Plain(el)
  return convert_mixed_html_block(el)
end

local function equal_widths(count)
  local widths = {}
  for index = 1, count do
    widths[index] = 1 / count
  end
  return widths
end

local function table_widths(table)
  local count = #table.colspecs
  local heading = pandoc.utils.stringify(table.head):lower()
  local content = pandoc.utils.stringify(table):lower()

  if heading:match('criterio') and heading:match('acciones realizadas') then
    return { 0.20, 0.55, 0.25 }
  elseif heading:match('user story id') and heading:match('story points') then
    return { 0.06, 0.12, 0.20, 0.52, 0.10 }
  elseif heading:match('tarea') and heading:match('frecuencia') and heading:match('importancia') then
    return { 0.60, 0.20, 0.20 }
  elseif count == 3 and content:match('nombre') and content:match('carrera') and content:match('perfil') then
    return { 0.15, 0.55, 0.30 }
  elseif count == 5 and heading:match('tipo') and heading:match('responsabilidad principal') then
    return { 0.10, 0.24, 0.19, 0.25, 0.22 }
  elseif heading:match('versi') and heading:match('modificaci') then
    return { 0.12, 0.16, 0.20, 0.52 }
  elseif count == 3 and heading:match('tipo') and heading:match('nombre') then
    return { 0.16, 0.28, 0.56 }
  elseif count == 4 and heading:match('tabla') and heading:match('campo') then
    return { 0.12, 0.36, 0.12, 0.40 }
  elseif count == 4 and heading:match('descripci') then
    return { 0.12, 0.22, 0.40, 0.26 }
  elseif count == 5 then
    return { 0.12, 0.18, 0.22, 0.32, 0.16 }
  elseif count == 6 then
    return { 0.08, 0.12, 0.18, 0.34, 0.14, 0.14 }
  elseif count == 7 then
    return { 0.06, 0.10, 0.16, 0.34, 0.12, 0.10, 0.12 }
  end

  return equal_widths(count)
end

local function break_technical_identifier(str)
  local text = str.text
  if #text < 18 or text:match('%s') then
    return str
  end

  local out = {}
  local start = 1
  for index = 2, #text do
    local previous = text:sub(index - 1, index - 1)
    local current = text:sub(index, index)
    local camel_case = previous:match('[%l%d]') and current:match('%u')
    local after_separator = previous:match('[_/%-]')

    if camel_case or after_separator then
      table.insert(out, pandoc.Str(text:sub(start, index - 1)))
      table.insert(out, pandoc.RawInline('latex', '\\allowbreak{}'))
      start = index
    end
  end

  if #out == 0 then
    return str
  end

  table.insert(out, pandoc.Str(text:sub(start)))
  return out
end

local function fit_table(table)
  local heading = pandoc.utils.stringify(table.head):lower()
  if #table.colspecs == 5 and heading:match('tipo') and heading:match('responsabilidad principal') then
    table = table:walk({ Str = break_technical_identifier })
  end

  local widths = table_widths(table)
  local colspecs = {}

  for index, spec in ipairs(table.colspecs) do
    colspecs[index] = { spec[1], widths[index] }
  end

  table.colspecs = colspecs
  return table
end

local function fit_image(image)
  local source = image.src:lower():gsub('\\', '/')
  if source:match('images/capitulo1/foto_') then
    image.attributes.width = '1.25in'
    image.attributes.height = nil
    return image
  end

  local width = image.attributes.width
  if width then
    local value, unit = width:match('^([%d%.]+)(.*)$')
    value = tonumber(value)
    if value and (unit == '' or unit == 'px') and value > 600 then
      image.attributes.width = '100%'
    end
  end

  return image
end

-- El lector HTML conserva algunos URL extensos como texto plano. Convertirlos
-- en enlaces permite que xurl inserte saltos de linea dentro de tablas y evita
-- que el texto sobrepase el margen derecho del PDF.
local function linkify_bare_url(str)
  if str.text:match('^https?://') then
    return pandoc.Link({ pandoc.Str(str.text) }, str.text)
  end

  return str
end

local function flatten_nested_link(link)
  local content = {}
  for _, inline in ipairs(link.content) do
    if inline.t == 'Link' then
      for _, nested in ipairs(inline.content) do
        table.insert(content, nested)
      end
    else
      table.insert(content, inline)
    end
  end
  link.content = content
  return link
end

function Pandoc(doc)
  local out = {}
  local omit = false

  for _, block in ipairs(doc.blocks) do
    local raw = nil
    if block.t == 'RawBlock' and block.format == 'html' then
      raw = block.text
    end

    if raw and raw:match('pdf:omit%-start') then
      omit = true
    elseif raw and raw:match('pdf:omit%-end') then
      omit = false
    elseif raw and raw:match('pdf:only') then
      local body = raw:match('pdf:only%s*(.-)%s*%-%->')
      if body and body ~= '' then
        -- Se interpreta como Markdown, no como LaTeX crudo, para que funcionen
        -- tanto los comandos (\tableofcontents) como los div (::: {#refs}).
        for _, parsed in ipairs(pandoc.read(body, 'markdown').blocks) do
          table.insert(out, parsed)
        end
      end
    elseif not omit then
      table.insert(out, block)
    end
  end

  return pandoc.Pandoc(out, doc.meta):walk({
    Table = fit_table,
    Image = fit_image,
    Str = linkify_bare_url,
    Link = flatten_nested_link
  })
end
