FROM ghcr.io/bouncmpe/cuda-python3:latest

COPY requirements.txt /opt/python3/venv/base/requirements2.txt
RUN /opt/python3/venv/base/bin/python3 -m pip install --no-cache-dir -r /opt/python3/venv/base/requirements2.txt

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends openjdk-17-jre \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

