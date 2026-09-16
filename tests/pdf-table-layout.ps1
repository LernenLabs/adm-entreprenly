[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repositoryRoot = Split-Path -Parent $PSScriptRoot
$filterPath = Join-Path $repositoryRoot 'config/pdf-only.lua'
$chapterOnePath = Join-Path $repositoryRoot 'docs/capitulo-1.md'

$fixture = @'
<table>
  <tr><td><strong>Nombre</strong></td><td>Lionel</td><td rowspan="4"><img src="images/capitulo1/foto_lionel.png" width="250"></td></tr>
  <tr><td><strong>Carrera</strong></td><td>Ingeniería de Software</td></tr>
  <tr><td><strong>Código</strong></td><td>U202416151</td></tr>
  <tr><td><strong>Perfil</strong></td><td>Descripción profesional.</td></tr>
</table>

<table>
  <tr><th>Tarea</th><th>Frecuencia</th><th>Importancia</th></tr>
  <tr><td>Verificar el stock disponible de productos en el local</td><td>Always</td><td>High</td></tr>
</table>

<table>
  <tr><th>Tipo</th><th>Nombre</th><th>Descripción</th><th>Responsabilidad Principal</th><th>Relación con otros elementos</th></tr>
  <tr><td>Command</td><td>UpdateNotificationSettingsCommand</td><td>Actualizar alertas.</td><td>Guardar preferencias.</td><td>Modifica NotificationSettings.</td></tr>
</table>

<table>
  <tbody>
    <tr><td><strong>User Story</strong></td><td>22</td><td><strong>Epic ID</strong></td><td>04</td></tr>
    <tr><td><strong>Title</strong></td><td colspan="3">Renovar suscripción</td></tr>
    <tr>
      <td><strong>Acceptance Criteria</strong></td>
      <td colspan="3"><strong>Scenario 1</strong><br>Dado que el usuario renueva.<br><br><strong>Scenario 2</strong><br>Dado que el usuario no puede renovar.</td>
    </tr>
  </tbody>
</table>
'@

$onWindows = ($null -eq $IsWindows) -or $IsWindows
$resourcePath = if ($onWindows) { '.;docs' } else { '.:docs' }

Push-Location $repositoryRoot
try {
    $latex = ($fixture | & pandoc `
        --from=markdown-yaml_metadata_block-markdown_in_html_blocks `
        "--lua-filter=$filterPath" `
        "--resource-path=$resourcePath" `
        --to=latex) -join "`n"
}
finally {
    Pop-Location
}

if ($LASTEXITCODE -ne 0) {
    throw "Pandoc termino con el codigo $LASTEXITCODE."
}

if ($latex -notmatch '\\begin\{tabular\}\{\|') {
    throw 'Las tablas cortas no se escriben como tabular con cuadricula.'
}

if ($latex -notmatch '\\hline') {
    throw 'Las tablas no dibujan las lineas horizontales de la cuadricula.'
}

if ($latex -notmatch '\\cline\{1-2\}') {
    throw 'La celda combinada de la fotografia deja pasar la linea horizontal.'
}

if ($latex -notmatch '\\multirow\{4\}') {
    throw 'La fotografia de perfil no ocupa las cuatro filas.'
}

if ($latex -notmatch '\\multicolumn\{3\}') {
    throw 'El colspan de las User Stories no llega al LaTeX.'
}

if ($latex -match '\\\\\s*\n[^\\]*\\multicolumn') {
    throw 'Una celda combinada contiene un salto de fila que rompe la tabla.'
}

if ($latex -notmatch '\\newline') {
    throw 'Los <br> de una celda combinada deben usar \newline, no \\.'
}

if ($latex -notmatch 'width=1\.25in') {
    throw 'Las fotografias de perfiles no se limitan a 1.25 pulgadas en el PDF.'
}

if ($latex -notmatch 'docs/images/capitulo1/foto_lionel\.png') {
    throw 'La ruta de una imagen dentro de una tabla no se resuelve con el resource-path.'
}

if ($latex -notmatch '0\.6000\\pdftblwidth') {
    throw 'La columna Tarea del User Task Matrix no recibe el 60% del ancho.'
}

if ($latex -notmatch '\\allowbreak\{\}') {
    throw 'Los identificadores tecnicos largos no incluyen puntos de quiebre.'
}

if ($latex -notmatch '\\linewidth-\d+\\tabcolsep') {
    throw 'El ancho de la tabla no descuenta los separadores de columna.'
}

$chapterOne = Get-Content -Raw -LiteralPath $chapterOnePath
if ($chapterOne -match 'rowspan="3"') {
    throw 'Los perfiles todavia limitan la fotografia a tres filas.'
}

if ($chapterOne -match 'colspan="2"') {
    throw 'El texto del perfil todavia ocupa la columna reservada para la fotografia.'
}

Write-Host 'PASS: las tablas del PDF llevan cuadricula, anchos y saltos seguros.' -ForegroundColor Green
