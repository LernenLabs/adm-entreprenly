$ErrorActionPreference = 'Stop'

$onWindows = ($null -eq $IsWindows) -or $IsWindows
if ($onWindows) {
    $env:Path = $env:Path + ';' +
        [System.Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' +
        [System.Environment]::GetEnvironmentVariable('Path', 'User')
}

$dependencies = @(
    [pscustomobject]@{ Name = 'Pandoc'; Command = 'pandoc'; WingetId = 'JohnMacFarlane.Pandoc' }
    [pscustomobject]@{ Name = 'MiKTeX (XeLaTeX)'; Command = 'xelatex'; WingetId = 'MiKTeX.MiKTeX' }
)

function Get-InstalledFont {
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

$missing = @($dependencies | Where-Object { $null -eq (Get-Command $_.Command -ErrorAction SilentlyContinue) })
foreach ($dependency in $dependencies) {
    $installed = $missing.Command -notcontains $dependency.Command
    $label = if ($installed) { '[OK]' } else { '[FALTA]' }
    Write-Host ("{0} {1}" -f $label, $dependency.Name) -ForegroundColor $(if ($installed) { 'Green' } else { 'Yellow' })
}

if ($missing.Count -gt 0) {
    if (-not $onWindows -or $null -eq (Get-Command winget -ErrorAction SilentlyContinue)) {
        throw 'Instala manualmente Pandoc y XeLaTeX antes de generar el informe.'
    }

    foreach ($dependency in $missing) {
        Write-Host ("Instalando {0}..." -f $dependency.Name) -ForegroundColor Cyan
        & winget install --id $dependency.WingetId --exact --silent --accept-package-agreements --accept-source-agreements
        if ($LASTEXITCODE -ne 0) { throw "No se pudo instalar $($dependency.Name)." }
    }

    $env:Path = $env:Path + ';' +
        [System.Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' +
        [System.Environment]::GetEnvironmentVariable('Path', 'User')
}

if ($null -ne (Get-Command initexmf -ErrorAction SilentlyContinue)) {
    & initexmf --set-config-value '[MPM]AutoInstall=1'
}

$font = Get-InstalledFont
if ($null -eq $font) {
    Write-Host 'No se encontro Aptos, Calibri ni Carlito.' -ForegroundColor Yellow
    if ($onWindows) {
        Write-Host 'Instala Aptos o Calibri antes de compilar.'
    }
    else {
        Write-Host 'En Ubuntu instala Carlito con: sudo apt-get install fonts-crosextra-carlito'
    }
    exit 1
}

Write-Host ("Fuente disponible: {0}" -f $font) -ForegroundColor Green
Write-Host 'Dependencias listas. Genera AV1 con: .\scripts\build.ps1 av1' -ForegroundColor Green
