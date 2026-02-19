FROM ghcr.io/sonnhfit/sonagent/sonagent:latest

WORKDIR /sonagent

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Keep the default entrypoint and command from base image