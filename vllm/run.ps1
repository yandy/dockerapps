docker run --rm --gpus all -v $PWD/.cache/huggingface:/root/.cache/huggingface -p 8000:8000 --ipc=host vllm/vllm-openai:v0.6.6.post1 --model deepseek-ai/DeepSeek-V3 --trust-remote-code
