[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repositoryRoot = Split-Path -Parent $PSScriptRoot
$buildScript = Join-Path $repositoryRoot 'scripts/build.ps1'
$expectedPdf = Join-Path $repositoryRoot 'dist/upc-pre-202620-1acc0238-13975-entreprenly-report-av1.pdf'

if (-not (Test-Path -LiteralPath $buildScript -PathType Leaf)) {
    throw "No se encontro el generador esperado: $buildScript"
}

Push-Location $repositoryRoot
try {
    $filteredText = (& pandoc `
        'README.md' `
        'docs/capitulo-1.md' `
        'docs/capitulo-2.md' `
        'docs/conclusiones.md' `
        'docs/bibliografia.md' `
        'docs/anexos.md' `
        --from=markdown-yaml_metadata_block `
        --lua-filter=config/pdf-only.lua `
        --to=plain) -join "`n"
}
finally {
    Pop-Location
}

foreach ($requiredHeading in @('Student Outcome', 'Capítulo I: Presentación', 'Capítulo II: Requirements Development and Software Solution Design')) {
    if ($filteredText -notlike "*$requiredHeading*") {
        throw "El filtro de PDF elimino una seccion requerida: $requiredHeading"
    }
}

if (Test-Path -LiteralPath $expectedPdf -PathType Leaf) {
    Remove-Item -LiteralPath $expectedPdf -Force
}

$buildOutput = & $buildScript av1 2>&1
$buildExitCode = $LASTEXITCODE
$buildOutput | ForEach-Object { Write-Host $_ }

if ($buildExitCode -ne 0) {
    throw "El generador finalizo con el codigo $buildExitCode."
}

$buildOutputText = $buildOutput | Out-String
if ($buildOutputText -match 'did not succeed|Couldn''t open') {
    throw 'La compilacion termino con errores internos de fuentes.'
}

if (-not (Test-Path -LiteralPath $expectedPdf -PathType Leaf)) {
    throw "El generador no creo el PDF esperado: $expectedPdf"
}

if ((Get-Item -LiteralPath $expectedPdf).Length -le 0) {
    throw 'El PDF generado esta vacio.'
}

Write-Host "PASS: AV1 generado en $expectedPdf" -ForegroundColor Green
