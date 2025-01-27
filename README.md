# dockerapps
run apps with docker

## 1. comfyui

```pwsh
# setup and start (for first time)
./dc-comfyui.ps1 up -d

# stop
./dc-comfyui.ps1 stop

# start
./dc-comfyui.ps1 start
```
> Open in browser:  http://localhost:8188

## 2. facefusion

```pwsh
# setup and start (for first time)
./dc-facefusion.ps1 up -d

# stop
./dc-facefusion.ps1 stop

# start
./dc-facefusion.ps1 start
```
> Open in browser:  http://localhost:7870

## 3. ollama and open-webui

```pwsh
# setup and start (for first time)
./dc-ollama.ps1 up -d

# stop
./dc-ollama.ps1 stop

# start
./dc-ollama.ps1 start
```
> Open WebUI in browser: http://localhost:8080 ;
> Access Ollama API at: http://localhost:11434
