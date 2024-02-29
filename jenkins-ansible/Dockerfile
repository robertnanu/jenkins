FROM jenkins/jenkins:latest

USER root

# Install Python 3 and pip3
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-dev libffi-dev gcc libssl-dev iputils-ping && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Ansible
RUN apt-get update && \
    apt-get install -y ansible && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Adjust PATH to include user's local bin
ENV PATH="${PATH}:/root/.local/bin"

USER jenkins

# Any other commands or instructions here as needed
