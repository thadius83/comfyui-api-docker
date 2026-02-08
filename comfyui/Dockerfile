FROM ghcr.io/saladtechnologies/comfyui-api:comfy0.8.2-api1.17.0-torch2.8.0-cuda12.8-runtime

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    build-essential \
    python3-dev \
    cmake \
 && rm -rf /var/lib/apt/lists/*
USER $USER

#WORKDIR /opt/ComfyUI/custom_nodes

#RUN git clone https://github.com/city96/ComfyUI-GGUF.git
#RUN git clone https://github.com/pythongosssss/ComfyUI-Custom-Scripts.git
#RUN git clone https://github.com/SeanScripts/ComfyUI-Unload-Model.git

WORKDIR /opt/ComfyUI
RUN pip install --no-cache-dir gguf opencv-python-headless
RUN pip install --no-cache-dir gguf 
RUN pip install --no-cache-dir gguf matplotlib
RUN pip install --no-cache-dir insightface==0.7.3
RUN pip install --no-cache-dir \
    onnxruntime-gpu \
    imageio-ffmpeg
RUN pip install --no-cache-dir segment-anything


USER root
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg \
 && rm -rf /var/lib/apt/lists/*
USER $USER

#COPY workflows/ /workflows/

ENV MODEL_DIR=/opt/ComfyUI/models
ENV HF_HOME=/opt/ComfyUI/models/huggingface

EXPOSE 3000
CMD ["./comfyui-api", "--lowvram", "--cpu-vae", "--force-fp16"]

