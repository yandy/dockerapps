#!/bin/bash -e

# Get the root directory of the project by navigating two levels up from the script's location
root=$(dirname "$(dirname "$0")")

# Check if no arguments are provided
if [ -z "$1" ]; then
  # If no arguments, set the default to display help information
  set -- -h
fi

# Display help information if the 'start' or 'up' args is provided
if [[ "$@" =~ "up" || "$@" =~ "start" ]]; then
  echo -e "Open WebUI in browser:\nhttp://localhost:8080\n"
  echo -e "Access Ollama API at:\nhttp://localhost:11434"
fi

# Execute the Docker Compose command using the specified CUDA configuration file
exec docker compose -f "$root/ollama/compose.cuda.yml" "$@"
