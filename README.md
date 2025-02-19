# dockerapps
run apps with docker

## 1. comfyui

```pwsh
# setup and start (for first time)
./bin/comfyui.ps1 up -d

# stop
./bin/comfyui.ps1 stop

# start
./bin/comfyui.ps1 start
```
> Open in browser:  http://localhost:8188

## 2. facefusion

```pwsh
# setup and start (for first time)
./bin/facefusion.ps1 up -d

# stop
./bin/facefusion.ps1 stop

# start
./bin/facefusion.ps1 start
```
> Open in browser:  http://localhost:7870

## 3. ollama and open-webui

```pwsh
# setup and start (for first time)
./bin/ollama.ps1 up -d

# stop
./bin/ollama.ps1 stop

# start
./bin/ollama.ps1 start
```
> Open WebUI in browser: http://localhost:8080 ;
> Access Ollama API at: http://localhost:11434

## 4. open-webui

```pwsh
# setup and start (for first time)
./bin/openwebui.ps1 up -d

# stop
./bin/openwebui.ps1 stop

# start
./bin/openwebui.ps1 start
```
> Open WebUI in browser: http://localhost:8080 ;
