# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.236.0/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT="jammy"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

COPY .devcontainer/install.sh install.sh

# [Optional] Uncomment this section to install additional OS packages.
RUN bash install.sh

# Create the gitpod user. UID must be 33333.
RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod

ENV CC "ccache gcc"
ENV CXX "ccache g++"
