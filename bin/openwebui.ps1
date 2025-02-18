# Get the root directory of the script
$root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)

# Set default argument to -h if no arguments are provided
if ($args.Count -eq 0) {
    $args = @("--help")
}

# Check if 'nvidia-smi' command is available (indicating CUDA/GPU support)
if (Get-Command nvidia-smi -ErrorAction SilentlyContinue) {
    # If CUDA is available, set the device to "cuda"
    $device = "cuda"
} else {
    # If CUDA is not available, set the device to "cpu"
    $device = "cpu"
}

# Execute the Docker Compose command using the appropriate configuration file
docker compose -f "$root\openwebui\compose.$device.yml" @args

# Check if @args contains "start" or "up"
if ($args -contains "start" -or $args -contains "up") {
Write-Host "Open WebUI in browser:`nhttp://localhost:8080`n"
}
