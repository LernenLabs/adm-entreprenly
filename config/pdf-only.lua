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

  return pandoc.Pandoc(out, doc.meta)
end
