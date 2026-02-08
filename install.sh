#!/bin/bash

echo "Setting up ComfyUI Standalone directories..."

# Create required local directories
mkdir -p output
mkdir -p custom_nodes
mkdir -p user

# Create required /srv directories
sudo mkdir -p /srv/ai/models
sudo mkdir -p /srv/ai/hf-cache

echo "Copying .env.example to .env..."
if [ ! -f .env ]; then
    cp .env.example .env
    echo "Created .env file - please edit it and add your HF_TOKEN"
else
    echo ".env already exists, skipping..."
fi

echo ""
echo "Setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit .env and add your HuggingFace token"
echo "2. (Optional) Copy or symlink custom_nodes from the parent project"
echo "3. Run: docker compose up -d"
