[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repositoryRoot = Split-Path -Parent $PSScriptRoot
$imageRoot = Join-Path $repositoryRoot 'docs/images/capitulo2'
$eventStormingSvgs = @(
    'paso4.svg'
    'paso5.svg'
    'gestion_inventario.svg'
    'ventas.svg'
    'perfil_configuracion.svg'
    'chatbot_whatsApp.svg'
    'generación_autenticación_cuenta.svg'
    'gestión_proceso_suscripción.svg'
)

foreach ($name in $eventStormingSvgs) {
    $path = Join-Path $imageRoot $name
    $svg = [IO.File]::ReadAllText($path)
    $root = [regex]::Match($svg, '<svg[^>]*>').Value
    $width = [regex]::Match($root, '\bwidth="([0-9.]+)px"')
    $height = [regex]::Match($root, '\bheight="([0-9.]+)px"')
    $viewBox = [regex]::Match($root, '\bviewBox="0 0 ([0-9.]+) ([0-9.]+)"')

    if (-not ($width.Success -and $height.Success -and $viewBox.Success)) {
        throw "$name no conserva sus coordenadas mediante viewBox."
    }

    if ([double]$width.Groups[1].Value -ne [double]$viewBox.Groups[1].Value -or
        [double]$height.Groups[1].Value -ne [double]$viewBox.Groups[2].Value) {
        throw "$name tiene un viewBox distinto de sus dimensiones originales."
    }
}

Write-Host 'PASS: los SVG de EventStorming conservan su viewport al escalarse.' -ForegroundColor Green
