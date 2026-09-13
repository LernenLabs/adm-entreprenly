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
  </table>
  </div>
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
