FROM jenkins/jenkins:lts

# Switch to root user to install packages
USER root

# Install Python, pip, and venv
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv

# Switch back to jenkins user
USER jenkins
