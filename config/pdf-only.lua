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
    return { 0.14, 0.22, 0.19, 0.24, 0.21 }
  elseif heading:match('versi') and heading:match('modificaci') then
    return { 0.12, 0.16, 0.20, 0.52 }
  elseif count == 3 and heading:match('tipo') and heading:match('nombre') then
    return { 0.16, 0.28, 0.56 }
  elseif count == 4 and heading:match('tabla') and heading:match('campo') then
    return { 0.21, 0.23, 0.22, 0.34 }
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

local function break_technical_identifier(str, minimum)
  local text = str.text
  if #text < (minimum or 18) or text:match('%s') then
    return str
  end

  local out = {}
  local start = 1
  for index = 2, #text do
    local previous = text:sub(index - 1, index - 1)
    local current = text:sub(index, index)
    local camel_case = previous:match('[%l%d]') and current:match('%u')
    local after_separator = previous:match('[_/%-%.]')

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

-- Pandoc resuelve el --resource-path de las imagenes que siguen siendo nodos del
-- AST, pero las tablas se escriben como LaTeX crudo y las de sus celdas dejan de
-- pasar por ahi: hay que dejar la ruta lista para xelatex. Se compara contra el
-- listado del directorio en vez de abrir el archivo porque io.open no encuentra
-- los nombres con tildes en Windows.
local function file_exists(path)
  local ok, entries = pcall(pandoc.system.list_directory, pandoc.path.directory(path))
  if not ok then
    return false
  end

  local name = pandoc.path.filename(path)
  for _, entry in ipairs(entries) do
    if entry == name then
      return true
    end
  end

  return false
end

-- El lector HTML entrega la ruta como URL, con %20 en lugar de los espacios.
local function decode_url(source)
  return (source:gsub('%%(%x%x)', function(code)
    return string.char(tonumber(code, 16))
  end))
end

local function resolve_source(source)
  if source:match('^%a[%w+.-]*://') then
    return source
  end

  local path = decode_url(source)
  if file_exists(path) then
    return path
  end

  for _, directory in ipairs(PANDOC_STATE.resource_path) do
    local candidate = pandoc.path.join({ directory, path })
    if file_exists(candidate) then
      return candidate
    end
  end

  return path
end

-- El escritor LaTeX de Pandoc solo dibuja las tres lineas de booktabs: una
-- arriba, otra bajo el encabezado y otra abajo. Las tablas de este informe son
-- fichas (User Stories, entrevistas, perfiles) que en GitHub se ven con la
-- cuadricula completa, y sin encabezado quedaban reducidas a dos rayas. Por eso
-- se escriben a mano como longtable con \hline y reglas verticales.

local ALIGNMENT_COMMANDS = {
  AlignLeft = '\\raggedright',
  AlignRight = '\\raggedleft',
  AlignCenter = '\\centering',
  AlignDefault = '\\raggedright'
}

local CELL_OPTIONS = pandoc.WriterOptions({ wrap_text = 'none' })

local function alignment_command(alignment)
  return ALIGNMENT_COMMANDS[alignment] or ALIGNMENT_COMMANDS.AlignDefault
end

-- Las columnas se declaran como p{} para que el texto largo se ajuste. El ancho
-- util se guarda en \pdftblwidth (ver config/apa7.tex): es \linewidth menos el
-- espacio que consumen los separadores y las lineas verticales, de modo que la
-- suma de las fracciones nunca desborde el margen.
local function span_width(widths, first, last)
  local fraction = 0
  for index = first, last do
    fraction = fraction + widths[index]
  end

  local expression = string.format('%.4f\\pdftblwidth', fraction)
  local merged = last - first
  if merged > 0 then
    expression = string.format('%s+%d\\tabcolsep+%d\\arrayrulewidth',
      expression, 2 * merged, merged)
  end

  return expression
end

local function column_format(alignment, width)
  return string.format('>{%s\\arraybackslash}p{\\dimexpr %s\\relax}',
    alignment_command(alignment), width)
end

-- Dentro de \multicolumn un \\ se confunde con el final de la fila y LaTeX se
-- detiene. \newline hace el mismo salto y es seguro en una columna p{}; el
-- \strut da altura a la linea en blanco que dejan dos <br> seguidos.
local function cell_line_break()
  return pandoc.RawInline('latex', '\\newline\\strut{}')
end

local function cell_image(image)
  image.src = resolve_source(image.src)
  return image
end

-- Los nombres de clases, eventos y campos en \texttt no tienen donde partirse y
-- se salian por el margen derecho y de las columnas estrechas; se les abren
-- puntos de corte.
local function break_code(code)
  local parts = break_technical_identifier(pandoc.Str(code.text), 10)
  if parts.t then
    return nil
  end

  local out = { pandoc.RawInline('latex', '\\texttt{') }
  for _, part in ipairs(parts) do
    out[#out + 1] = part
  end
  out[#out + 1] = pandoc.RawInline('latex', '}')

  return out
end

local function cell_latex(blocks)
  local cell = pandoc.Pandoc(blocks):walk({
    LineBreak = cell_line_break,
    Image = cell_image
  })
  local text = pandoc.write(cell, 'latex', CELL_OPTIONS)
  return (text:gsub('^%s+', ''):gsub('%s+$', ''))
end

local function collect_rows(tbl)
  local rows = {}

  for _, row in ipairs(tbl.head.rows) do
    rows[#rows + 1] = { row = row, header = true }
  end

  for _, body in ipairs(tbl.bodies) do
    for _, row in ipairs(body.head) do
      rows[#rows + 1] = { row = row, header = true }
    end
    for _, row in ipairs(body.body) do
      rows[#rows + 1] = { row = row, header = false }
    end
  end

  for _, row in ipairs(tbl.foot.rows) do
    rows[#rows + 1] = { row = row, header = false }
  end

  return rows
end

-- Las celdas combinadas no aparecen en las filas siguientes del AST. La rejilla
-- marca que columnas ocupa cada celda para poder emitir los & que faltan y
-- saber donde no debe dibujarse la linea horizontal.
local function build_grid(rows)
  local grid = {}
  for index = 1, #rows do
    grid[index] = {}
  end

  for index, entry in ipairs(rows) do
    local column = 1
    for _, cell in ipairs(entry.row.cells) do
      while grid[index][column] do
        column = column + 1
      end

      grid[index][column] = {
        cell = cell,
        origin = true,
        colspan = cell.col_span,
        rowspan = cell.row_span
      }

      for row_offset = 0, cell.row_span - 1 do
        for column_offset = 0, cell.col_span - 1 do
          local covered = grid[index + row_offset]
          if covered and not (row_offset == 0 and column_offset == 0) then
            covered[column + column_offset] = {
              origin = false,
              colspan = cell.col_span,
              continues_row = row_offset > 0
            }
          end
        end
      end

      column = column + cell.col_span
    end
  end

  return grid
end

local function render_row(tbl, grid, rows, index, widths, environment)
  local columns = #tbl.colspecs
  local header = rows[index].header
  local pieces = {}
  local column = 1

  while column <= columns do
    local entry = grid[index][column]
    local span = 1
    local content = ''
    local alignment = nil

    if entry and entry.origin then
      span = entry.colspan
      alignment = entry.cell.alignment
      content = cell_latex(entry.cell.contents)
      if header and content ~= '' then
        content = '{\\bfseries ' .. content .. '}'
      end
      -- \multirow centra el contenido en el bloque de filas, pero si la tabla se
      -- parte entre paginas lo dibuja fuera de la tabla. En longtable se deja el
      -- contenido en la primera fila del bloque, que no se descoloca.
      if entry.rowspan > 1 and environment ~= 'longtable' then
        content = string.format('\\multirow{%d}{=}{%s}', entry.rowspan, content)
      end
    elseif entry then
      span = entry.colspan
    end

    if span > 1 then
      if alignment == nil or alignment == 'AlignDefault' then
        alignment = tbl.colspecs[column][1]
      end
      pieces[#pieces + 1] = string.format('\\multicolumn{%d}{%s%s|}{%s}',
        span,
        column == 1 and '|' or '',
        column_format(alignment, span_width(widths, column, column + span - 1)),
        content)
    else
      pieces[#pieces + 1] = content
    end

    column = column + span
  end

  local latex = table.concat(pieces, ' & ') .. ' \\\\'
  if header then
    latex = '\\rowcolor[gray]{0.92}\n' .. latex
  end

  return latex
end

-- Bajo una celda que sigue combinada verticalmente no debe pasar ninguna linea,
-- por eso las filas intermedias usan \cline en los tramos que si la necesitan.
local function render_rule(grid, rows, index, columns)
  if index == #rows then
    return '\\hline'
  end

  local segments = {}
  local start = nil

  for column = 1, columns do
    local below = grid[index + 1][column]
    if below and below.continues_row then
      if start then
        segments[#segments + 1] = { start, column - 1 }
        start = nil
      end
    elseif not start then
      start = column
    end
  end

  if start then
    segments[#segments + 1] = { start, columns }
  end

  if #segments == 1 and segments[1][1] == 1 and segments[1][2] == columns then
    return '\\hline'
  end

  local clines = {}
  for _, segment in ipairs(segments) do
    clines[#clines + 1] = string.format('\\cline{%d-%d}', segment[1], segment[2])
  end

  return table.concat(clines)
end

-- Las fichas cortas (User Stories, entrevistas, perfiles) se leen como una sola
-- unidad, asi que se escriben como tabular, que no se parte: si no cabe, pasa
-- entera a la pagina siguiente. Las tablas que no quepan en media pagina larga
-- siguen siendo longtable, porque un tabular mas alto que la pagina se saldria
-- por abajo.
local SINGLE_PAGE_ROWS = 16
local SINGLE_PAGE_LINES = 24
local CHARACTERS_PER_LINE = 97 -- a 12 pt en el ancho completo del texto
local IMAGE_LINES = 10

local function text_lines(text, per_line)
  if #text == 0 then
    return 0
  end
  return math.ceil(#text / per_line)
end

local function block_lines(block, per_line)
  if block.t == 'BulletList' or block.t == 'OrderedList' then
    local lines = 0
    for _, item in ipairs(block.content) do
      lines = lines + math.max(1, text_lines(pandoc.utils.stringify(item), per_line - 4))
    end
    return lines
  end

  if block.t == 'CodeBlock' then
    local lines = 1
    for _ in block.text:gmatch('\n') do
      lines = lines + 1
    end
    return lines
  end

  local lines = text_lines(pandoc.utils.stringify(block), per_line)
  for _, inline in ipairs(block.content or {}) do
    if inline.t == 'Image' then
      lines = lines + IMAGE_LINES
    end
  end

  return lines
end

local function cell_lines(cell, per_line)
  local lines = 0
  for index, block in ipairs(cell.contents) do
    if index > 1 then
      lines = lines + 1
    end
    lines = lines + block_lines(block, per_line)
  end
  return math.max(1, lines)
end

local function fits_in_one_page(rows, widths)
  if #rows > SINGLE_PAGE_ROWS then
    return false
  end

  local total = 0
  for _, entry in ipairs(rows) do
    local tallest = 1
    local column = 1
    for _, cell in ipairs(entry.row.cells) do
      local fraction = 0
      for index = column, math.min(column + cell.col_span - 1, #widths) do
        fraction = fraction + widths[index]
      end
      column = column + cell.col_span
      tallest = math.max(tallest, cell_lines(cell, math.max(8, fraction * CHARACTERS_PER_LINE)))
    end
    total = total + tallest
  end

  return total <= SINGLE_PAGE_LINES
end

local function latex_table(tbl, widths)
  local columns = #tbl.colspecs
  local rows = collect_rows(tbl)
  if columns == 0 or #rows == 0 then
    return nil
  end

  local grid = build_grid(rows)
  local specs = {}
  for index = 1, columns do
    specs[#specs + 1] = '|' .. column_format(tbl.colspecs[index][1],
      span_width(widths, index, index))
  end
  specs[#specs + 1] = '|'

  local caption = cell_latex(tbl.caption.long)
  local environment = 'longtable'
  if caption == '' and fits_in_one_page(rows, widths) then
    environment = 'tabular'
  end

  local out = {
    string.format(
      -- \linewidth y no \columnwidth: dentro de una lista la tabla dispone de
      -- menos espacio y con \columnwidth se salia por la derecha.
      '\\setlength{\\pdftblwidth}{\\dimexpr\\linewidth-%d\\tabcolsep-%d\\arrayrulewidth\\relax}',
      2 * columns, columns + 1)
  }

  if environment == 'tabular' then
    -- longtable ya deja aire alrededor; tabular hay que separarlo a mano y
    -- sacarlo de la sangria del parrafo.
    out[#out + 1] = '\\par\\vspace{\\bigskipamount}\\noindent'
  end

  out[#out + 1] = '\\begin{' .. environment .. '}{' .. table.concat(specs) .. '}'

  if caption ~= '' then
    out[#out + 1] = '\\caption{' .. caption .. '}\\\\'
  end

  out[#out + 1] = '\\hline'

  for index, entry in ipairs(rows) do
    out[#out + 1] = render_row(tbl, grid, rows, index, widths, environment)
    out[#out + 1] = render_rule(grid, rows, index, columns)
    -- El encabezado se repite cuando la tabla continua en la pagina siguiente.
    if environment == 'longtable' and entry.header
      and (rows[index + 1] == nil or not rows[index + 1].header) then
      out[#out + 1] = '\\endhead'
    end
  end

  out[#out + 1] = '\\end{' .. environment .. '}'

  if environment == 'tabular' then
    out[#out + 1] = '\\par\\vspace{\\bigskipamount}'
  end

  return pandoc.RawBlock('latex', table.concat(out, '\n'))
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

  if FORMAT:match('latex') then
    return latex_table(table, widths) or table
  end

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

-- Los rotulos del tipo "Segmento 2: Clientes Finales" quedaban al pie de una
-- pagina y su figura pasaba a la siguiente, y los pies "Figura N: ..." caian en
-- la pagina de despues de su imagen. \nopagebreak entre ambos obliga a que
-- viajen juntos.
local function is_image_block(block)
  if block.t ~= 'Para' and block.t ~= 'Plain' then
    return false
  end

  local image = false
  for _, inline in ipairs(block.content) do
    if inline.t == 'Image' then
      image = true
    elseif inline.t ~= 'Space' and inline.t ~= 'SoftBreak' and inline.t ~= 'LineBreak' then
      return false
    end
  end

  return image
end

local function is_text_block(block, limit)
  if (block.t ~= 'Para' and block.t ~= 'Plain') or is_image_block(block) then
    return false
  end

  local length = #pandoc.utils.stringify(block)
  return length > 0 and length <= limit
end

-- Un rotulo es la linea corta que presenta la figura; un pie es el parrafo que
-- la explica despues, que puede ocupar varias lineas.
local function is_label_block(block)
  return is_text_block(block, 120)
end

local function is_caption_block(block)
  return is_text_block(block, 400)
end

-- Ademas se centran las figuras, como pide el align="center" del documento
-- original. De paso se quita la sangria de primera linea, que empujaba las
-- imagenes anchas medio centimetro fuera del margen derecho. Se centra con
-- \hfill dentro del propio parrafo y no con un entorno center, que dentro de
-- una figura con minipages dejaba grupos sin cerrar.
local function center_image_block(block)
  local content = { pandoc.RawInline('latex', '\\noindent\\hfill{}') }

  for _, inline in ipairs(block.content) do
    content[#content + 1] = inline
  end

  content[#content + 1] = pandoc.RawInline('latex', '\\hfill\\mbox{}')
  block.content = content

  return block
end

local function center_images_and_keep_labels(blocks)
  local out = {}

  for index, block in ipairs(blocks) do
    -- Se decide antes de centrar: centrar mete RawInline en el parrafo y a
    -- partir de ahi ya no parece un bloque de imagen.
    local figure = is_image_block(block)
    local next_block = blocks[index + 1]
    local before_figure = next_block and not figure and is_label_block(block)
      and is_image_block(next_block)
    local before_caption = next_block and figure and is_caption_block(next_block)

    out[#out + 1] = figure and center_image_block(block) or block

    if before_figure or before_caption then
      out[#out + 1] = pandoc.RawBlock('latex', '\\nopagebreak')
    end
  end

  return out
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

  local document = pandoc.Pandoc(out, doc.meta):walk({
    Table = fit_table,
    Image = fit_image,
    Str = linkify_bare_url,
    Link = flatten_nested_link,
    Code = FORMAT:match('latex') and break_code or nil
  })

  -- Se recorre despues del paso anterior: ya no queda ninguna tabla nativa, de
  -- modo que este filtro de listas de bloques no toca el contenido de celdas.
  if FORMAT:match('latex') then
    document = document:walk({ Blocks = center_images_and_keep_labels })
  end

  return document
end
