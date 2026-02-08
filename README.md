# ComfyUI Standalone Docker Setup

Standalone ComfyUI instance with GPU support and FLUX.2 models.

## Quick Start

1. Run the installation script:
```bash
./install.sh
```

2. Edit `.env` and add your HuggingFace token:
```bash
HF_TOKEN=hf_your_token_here
```

3. Accept the FLUX.2-dev license:
   - Visit: https://huggingface.co/black-forest-labs/FLUX.2-dev
   - Click "Agree and access repository"

4. Start ComfyUI:
```bash
docker compose up -d
```

5. Access ComfyUI at: http://localhost:8188

## Updating ComfyUI

To update ComfyUI to the latest version inside the running container:
```bash
./update-comfyui.sh
```

## Directory Structure

- `/srv/ai/models` - Model storage (shared)
- `/srv/ai/hf-cache` - HuggingFace cache (shared)
- `./output` - Generated images
- `./custom_nodes` - Custom ComfyUI nodes
- `./user` - User settings and workflows

## Requirements

- Docker & Docker Compose
- NVIDIA GPU with CUDA support
- HuggingFace account with FLUX.2 license accepted

## Configuration

- **Base Image**: yanwk/comfyui-boot:cu128-slim
- **Exposed Port**: 8188
- **GPU**: NVIDIA with compute capability support
