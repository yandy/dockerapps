# dockerapps
run apps with docker

## 1. comfyui

```pwsh
docker compose -f $PWD\dockerapps\sd\compose.comfyui.cuda.yml up -d
```
> Open in browser:  http://localhost:8188

## 2. facefusion

```pwsh
docker compose -f $PWD\dockerapps\facefusion\compose.cuda.yml up -d
```
> Open in browser:  http://localhost:7870

## 3. ollama and open-webui

```pwsh
docker compose -f $PWD\dockerapps\ollama\compose.cuda.yml up -d
docker compose -f $PWD\dockerapps\ollama\compose.cuda.yml exec cuda ollama run deepseek-r1:7b
```
> Open WebUI in browser: http://localhost:8080 ;
> Access Ollama API at: http://localhost:11434
