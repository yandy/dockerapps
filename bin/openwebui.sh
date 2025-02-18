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
fi

# Check if 'nvidia-smi' command is available (indicating CUDA/GPU support)
if command -v nvidia-smi &> /dev/null; then
    # If CUDA is available, set the device to "cuda"
    device="cuda"
else
    # If CUDA is not available, set the device to "cpu"
    device="cpu"
fi

# Execute the Docker Compose command using the appropriate configuration file
exec docker compose -f "$root/openwebui/compose.$device.yml" "$@"
