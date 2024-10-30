FROM node:20

USER root

RUN <<EOF
    npm install --global @vscode/vsce
    mkdir -p /opt/codespace/extensions
    cd /tmp
    git clone https://github.com/blaw105/lynbrook-cs
    cd lynbrook-cs
    npm install
    vsce package
    mv lynbrook-cs-0.0.1.vsix /opt/codespace/extensions
    cd /tmp
    npm uninstall --global vsce
EOF

RUN <<EOF
apt-get update
DEBIAN_FRONTEND=noninteractive
apt-get -y install default-jre-headless
apt-get clean
rm -rf /var/lib/apt/lists/*
EOF
