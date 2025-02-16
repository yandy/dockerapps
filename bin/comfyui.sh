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
  echo -e "Open in browser:\nhttp://localhost:8188"
fi

# Execute the Docker Compose command using the specified CUDA configuration file
exec docker compose -f "$root/comfyui/compose.cuda.yml" "$@"
