FROM ubuntu:22.04

USER root

RUN npm install --global @vscode/vsce && \
    mkdir -p /opt/codespace/extensions && \
    cd /tmp && \
    git clone https://github.com/blaw105/lynbrook-cs && \
    cd lynbrook-cs && \
    npm install && \
    vsce package && \
    mv lynbrook-cs-0.0.1.vsix /opt/codespace/extensions && \
    cd /tmp && \
    npm uninstall --global vsce
