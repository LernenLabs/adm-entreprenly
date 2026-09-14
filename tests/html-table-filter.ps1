[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repositoryRoot = Split-Path -Parent $PSScriptRoot
$filterPath = Join-Path $repositoryRoot 'config/pdf-only.lua'

$fixture = @'
# Registro de prueba

- Primera entrevista:
  <div align="center">
  <table style="width: 100%;">
    <tr>
      <th>Campo</th>
      <th>Valor</th>
    </tr>
    <tr>
      <td><strong>Integrante:</strong></td>
      <td>Lionel<br>Chavez</td>
    </tr>
    <tr>
      <td><strong>Enlace:</strong></td>
      <td>https://example.com/una/ruta/muy/extensa/que/debe/poder/dividirse</td>
    </tr>
  </table>
  </div>

<table>
  <tr><th>Order</th><th>User Story Id</th><th>Title</th><th>Description</th><th>Story Points</th></tr>
  <tr><td>1</td><td>US-01</td><td>Historia móvil</td><td>Descripción extensa que debe ajustarse al ancho disponible.</td><td>3</td></tr>
</table>

<img src="diagram.png" alt="Diagrama" width="800">
'@

$json = ($fixture | & pandoc `
    --from=markdown-yaml_metadata_block-markdown_in_html_blocks `
    "--lua-filter=$filterPath" `
    --to=json) -join "`n"

if ($LASTEXITCODE -ne 0) {
    throw "Pandoc termino con el codigo $LASTEXITCODE."
}

if ($json -notmatch '"t":"Table"') {
    throw 'El filtro no convirtio la tabla HTML en una tabla nativa de Pandoc.'
}

if ($json -match '<table') {
    throw 'La conversion dejo etiquetas de tabla HTML sin procesar.'
}

if ($json -match '"ColWidthDefault"') {
    throw 'La tabla conserva anchos automaticos que pueden exceder los margenes del PDF.'
}

if ($json -notmatch '"width","100%"') {
    throw 'El filtro no limito una imagen HTML ancha al espacio disponible.'
}

if ($json -notmatch '"t":"Link"') {
    throw 'El filtro no convirtio el URL HTML extenso en un enlace divisible.'
}

$plain = ($fixture | & pandoc `
    --from=markdown-yaml_metadata_block-markdown_in_html_blocks `
    "--lua-filter=$filterPath" `
    --to=plain) -join "`n"

foreach ($expectedText in @('Campo', 'Valor', 'Integrante:', 'Lionel', 'Chavez')) {
    if ($plain -notlike "*$expectedText*") {
        throw "La conversion perdio el contenido esperado: $expectedText"
    }
}

Write-Host 'PASS: las tablas HTML se convierten a tablas nativas de Pandoc.' -ForegroundColor Green
