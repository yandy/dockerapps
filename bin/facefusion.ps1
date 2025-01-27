# Get the root directory of the script
$root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)

# Set default argument to -h if no arguments are provided
if ($args.Count -eq 0) {
    $args = @("--help")
}

# Execute docker compose command
docker compose -f "$root\facefusion\compose.cuda.yml" @args

# Check if @args contains "start" or "up"
if ($args -contains "start" -or $args -contains "up") {
Write-Host "Open in browser:`nhttp://localhost:7870"
}
