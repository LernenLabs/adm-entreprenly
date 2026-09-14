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
'@

$native = ($fixture | & pandoc `
    --from=markdown-yaml_metadata_block-markdown_in_html_blocks `
    "--lua-filter=$filterPath" `
    --to=native) -join "`n"

if ($LASTEXITCODE -ne 0) {
    throw "Pandoc termino con el codigo $LASTEXITCODE."
}

if ($native -notmatch '\( "width" , "1\.25in" \)') {
    throw 'Las fotografias de perfiles no se limitan a 1.25 pulgadas en el PDF.'
}

if ($native -notmatch 'ColWidth 0\.6') {
    throw 'La columna Tarea del User Task Matrix no recibe el 60% del ancho.'
}

if ($native -notmatch '\\allowbreak\{\}') {
    throw 'Los identificadores tecnicos largos no incluyen puntos de quiebre.'
}

$chapterOne = Get-Content -Raw -LiteralPath $chapterOnePath
if ($chapterOne -match 'rowspan="3"') {
    throw 'Los perfiles todavia limitan la fotografia a tres filas.'
}

if ($chapterOne -match 'colspan="2"') {
    throw 'El texto del perfil todavia ocupa la columna reservada para la fotografia.'
}

Write-Host 'PASS: las tablas del PDF tienen anchos y saltos seguros.' -ForegroundColor Green
