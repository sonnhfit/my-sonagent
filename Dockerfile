FROM ghcr.io/sonnhfit/sonagent/sonagent:latest

WORKDIR /sonagent

COPY requirements.txt .
COPY user_data /sonagent/user_data
COPY user_data/tools/. /sonagent/user_data/tools/

RUN pip install --no-cache-dir -r requirements.txt

# Keep the default entrypoint and command from base image
