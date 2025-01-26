# Define default arguments
$defaultArgs = "up -d"

# Get command-line arguments, if any
$args = $args -join " "

# If no arguments are provided, use the default arguments
if ([string]::IsNullOrEmpty($args)) {
    $args = $defaultArgs
}

# Construct the docker compose command with the arguments
$dockerComposeCommand = "docker compose -f $PWD\ollama\compose.cuda.yml $args"

# Run the docker compose command
Invoke-Expression $dockerComposeCommand
Write-Host "Open WebUI in browser:`nhttp://localhost:8080`n"
Write-Host "Access Ollama API at:`nhttp://localhost:11434"
