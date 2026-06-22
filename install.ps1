# Install the /teach skill into Claude Code's global skills directory.
$ErrorActionPreference = "Stop"

$src = Join-Path $PSScriptRoot "teach"
$dst = Join-Path $HOME ".claude\skills\teach"

if (-not (Test-Path $src)) {
    Write-Error "teach\ not found next to this script ($src)"
    exit 1
}

Write-Host "Removing any existing install at $dst ..."
Remove-Item -Recurse -Force $dst -ErrorAction SilentlyContinue

Write-Host "Copying $src -> $dst ..."
New-Item -ItemType Directory -Force -Path (Join-Path $HOME ".claude\skills") | Out-Null
Copy-Item -Recurse $src $dst

Write-Host "Done. Restart Claude Code, then run:  /teach <topic>"
