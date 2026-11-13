@echo off
setlocal
title Sauce for Zwift - Master Unified RiderFeedHUD v22.1 Installer (Windows)
echo ============================================================================
echo   Installing Master Unified RiderFeedHUD v22.1 for Sauce for Zwift
echo ============================================================================
set "SELF_PATH=%~f0"
powershell -NoProfile -ExecutionPolicy Bypass -Command "$raw = [IO.File]::ReadAllText($env:SELF_PATH); $a = '::PS_REPO_' + 'BEGIN::'; $b = '::PS_REPO_' + 'END::'; $s = $raw.IndexOf($a) + $a.Length; $e = $raw.IndexOf($b); Invoke-Expression $raw.Substring($s, $e - $s)"
echo.
pause
exit /b 0

::PS_REPO_BEGIN::
try {
    $ErrorActionPreference = 'Stop'
    $src = [IO.Path]::GetDirectoryName($env:SELF_PATH)
    $mSrc = if (Test-Path -LiteralPath (Join-Path $src 'manifest.json')) { $src } else { Join-Path $src 'RiderFeedHUD' }
    if (-not (Test-Path -LiteralPath (Join-Path $mSrc 'manifest.json'))) {
        throw 'Please extract/unzip the downloaded GitHub ZIP completely before running this installer.'
    }
    $roots = @((Join-Path ([Environment]::GetFolderPath('MyDocuments')) 'SauceMods'), (Join-Path $env:USERPROFILE 'Documents\SauceMods'), (Join-Path $env:USERPROFILE 'OneDrive\Documents\SauceMods')) | Where-Object { $_ -and (Test-Path -LiteralPath $_) } | Select-Object -Unique
    if (-not $roots) {
        $fallback = Join-Path ([Environment]::GetFolderPath('MyDocuments')) 'SauceMods'
        New-Item -ItemType Directory -Force -Path $fallback | Out-Null
        $roots = @($fallback)
    }
    foreach ($r in $roots) {
        $dup = Join-Path $r 'WOW_0_100_Ribbon'
        if (Test-Path -LiteralPath $dup) { Remove-Item -LiteralPath $dup -Recurse -Force -ErrorAction SilentlyContinue }
        $dst = Join-Path $r 'RiderFeedHUD'
        $dstP = Join-Path $dst 'pages'
        New-Item -ItemType Directory -Force -Path $dstP | Out-Null
        Copy-Item -Force (Join-Path $mSrc 'manifest.json') (Join-Path $dst 'manifest.json')
        Copy-Item -Force (Join-Path $mSrc 'README.md') (Join-Path $dst 'README.md') -ErrorAction SilentlyContinue
        Copy-Item -Force (Join-Path $mSrc 'HELP.md') (Join-Path $dst 'HELP.md') -ErrorAction SilentlyContinue
        Copy-Item -Force (Join-Path $mSrc 'RiderFeedHUD_Visual_Callout_Guide.png') (Join-Path $dst 'RiderFeedHUD_Visual_Callout_Guide.png') -ErrorAction SilentlyContinue
        Copy-Item -Force (Join-Path $mSrc 'pages\*') $dstP -Recurse
        Write-Host ('[SUCCESS] Installed RiderFeedHUD v22.1 to: ' + $dst) -ForegroundColor Green
    }
} catch {
    Write-Host ('[ERROR] ' + $_.Exception.Message) -ForegroundColor Red
    exit 1
}
::PS_REPO_END::
