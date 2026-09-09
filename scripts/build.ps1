param(
    [Parameter(Position = 0)]
    [string]$Delivery
)

$ErrorActionPreference = 'Stop'

$Period = '202620'
$CourseCode = '1acc0238'
$Nrc = '13975'
$Startup = 'entreprenly'
$Deliveries = @('av1', 'tb1', 'av2', 'tb2')

$ClosingFiles = @(
    'docs/conclusiones.md'
    'docs/video-app-validation.md'
    'docs/video-about-the-product.md'
    'docs/video-about-the-team.md'
    'docs/glosario.md'
    'docs/bibliografia.md'
    'docs/anexos.md'
)

$ChaptersByDelivery = @{
    'av1' = @(
        'README.md'
        'docs/capitulo-1.md'
        'docs/capitulo-2.md'
        'docs/conclusiones.md'
        'docs/bibliografia.md'
        'docs/anexos.md'
    )
    'tb1' = @('README.md', 'docs/capitulo-1.md', 'docs/capitulo-2.md', 'docs/capitulo-3.md', 'docs/capitulo-4.md') + $ClosingFiles
    'av2' = @('README.md', 'docs/capitulo-1.md', 'docs/capitulo-2.md', 'docs/capitulo-3.md', 'docs/capitulo-4.md') + $ClosingFiles
    'tb2' = @('README.md', 'docs/capitulo-1.md', 'docs/capitulo-2.md', 'docs/capitulo-3.md', 'docs/capitulo-4.md') + $ClosingFiles
}

$ConfigFiles = @(
    'config/format.yaml'
    'config/apa7.tex'
    'config/apa.csl'
    'config/pdf-only.lua'
    'references.bib'
)

function Get-PreferredFont {
    $families = @('Aptos', 'Calibri', 'Carlito')

    if ($onWindows) {
        $fontDirectory = Join-Path $env:WINDIR 'Fonts'
        foreach ($family in $families) {
            $pattern = $family.ToLowerInvariant() + '*'
            $match = Get-ChildItem -LiteralPath $fontDirectory -File -ErrorAction SilentlyContinue |
                Where-Object { $_.BaseName.ToLowerInvariant() -like $pattern } |
                Select-Object -First 1
            if ($null -ne $match) { return $family }
        }
    }
    elseif ($null -ne (Get-Command fc-list -ErrorAction SilentlyContinue)) {
        $fonts = (& fc-list ':family' 2>$null) -join "`n"
        foreach ($family in $families) {
            if ($fonts -match [regex]::Escape($family)) { return $family }
        }
    }

    return $null
}

function Show-Usage {
    Write-Host ''
    Write-Host 'Uso: .\scripts\build.ps1 <entrega>' -ForegroundColor Yellow
    Write-Host ('La entrega debe ser una de estas: {0}' -f ($Deliveries -join ', '))
    Write-Host 'Ejemplo: .\scripts\build.ps1 av1'
    Write-Host ''
}

if ([string]::IsNullOrWhiteSpace($Delivery)) {
    Write-Host 'ERROR: falta indicar la entrega.' -ForegroundColor Red
    Show-Usage
    exit 1
}

$Delivery = $Delivery.Trim().ToLowerInvariant()
if ($Deliveries -notcontains $Delivery) {
    Write-Host ("ERROR: '{0}' no es una entrega valida." -f $Delivery) -ForegroundColor Red
    Show-Usage
    exit 1
}

$repositoryRoot = Split-Path -Parent $PSScriptRoot
Push-Location $repositoryRoot
try {
    $onWindows = ($null -eq $IsWindows) -or $IsWindows
    if ($onWindows) {
        $env:Path = $env:Path + ';' +
            [System.Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' +
            [System.Environment]::GetEnvironmentVariable('Path', 'User')
        $resourcePath = '.;docs'
    }
    else {
        $resourcePath = '.:docs'
    }

    foreach ($tool in @('pandoc', 'xelatex')) {
        if ($null -eq (Get-Command $tool -ErrorAction SilentlyContinue)) {
            Write-Host ("ERROR: {0} no esta instalado. Ejecuta .\scripts\dependencies.ps1" -f $tool) -ForegroundColor Red
            exit 1
        }
    }

    $mainFont = Get-PreferredFont
    if ($null -eq $mainFont) {
        Write-Host 'ERROR: no se encontro Aptos, Calibri ni Carlito.' -ForegroundColor Red
        exit 1
    }

    $chapters = $ChaptersByDelivery[$Delivery]
    $missingFiles = @($chapters + $ConfigFiles | Where-Object { -not (Test-Path -LiteralPath $_ -PathType Leaf) })
    if ($missingFiles.Count -gt 0) {
        Write-Host 'ERROR: faltan archivos requeridos:' -ForegroundColor Red
        $missingFiles | ForEach-Object { Write-Host ("  - {0}" -f $_) }
        exit 1
    }

    if (-not (Test-Path -LiteralPath 'dist' -PathType Container)) {
        New-Item -ItemType Directory -Path 'dist' | Out-Null
    }

    $output = "dist/upc-pre-$Period-$CourseCode-$Nrc-$Startup-report-$Delivery.pdf"

    Write-Host ("Generando {0} con {1} archivos y fuente {2}..." -f $Delivery.ToUpperInvariant(), $chapters.Count, $mainFont) -ForegroundColor Cyan
    $chapters | ForEach-Object { Write-Host ("  {0}" -f $_) -ForegroundColor DarkGray }

    & pandoc $chapters `
        --from=markdown-yaml_metadata_block `
        --metadata-file=config/format.yaml `
        "--variable=mainfont:$mainFont" `
        --include-in-header=config/apa7.tex `
        --lua-filter=config/pdf-only.lua `
        --citeproc `
        --csl=config/apa.csl `
        --bibliography=references.bib `
        --pdf-engine=xelatex `
        --top-level-division=section `
        "--resource-path=$resourcePath" `
        --syntax-highlighting=tango `
        -o $output

    if ($LASTEXITCODE -ne 0) {
        Write-Host 'La generacion fallo. Revisa el error de LaTeX mostrado arriba.' -ForegroundColor Red
        exit 1
    }

    $sizeKb = [math]::Round((Get-Item -LiteralPath $output).Length / 1KB)
    Write-Host ("PDF generado: {0} ({1} KB)" -f $output, $sizeKb) -ForegroundColor Green
}
finally {
    Pop-Location
}
