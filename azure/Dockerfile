FROM ubuntu:latest

# Ensure $HOME is set correctly (for root, it's /root)
ENV HOME=/root

# Update and install dependencies
RUN apt-get update && \
    apt-get install -y openssh-client wget vim curl apt-transport-https python3-pip python3-venv && \
    curl -sL https://aka.ms/InstallAzureCLIDeb | bash && \
    python3 -m venv "$HOME/venv"

COPY requirements.txt "$HOME/requirements.txt"
WORKDIR "$HOME"

# Ensure the python virtual environment is in PATH
ENV PATH="$HOME/venv/bin:$PATH"

# installing azure libraries
RUN pip install --upgrade pip && pip install ansible && pip install ansible[azure] && \
    pip install -r requirements.txt

