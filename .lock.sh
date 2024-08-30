cd

code --install-extension oliver-ni.web-cat-vscode
code --install-extension vscjava.vscode-java-pack

mkdir -p .vscode-remote/extensions

cd .vscode-remote

sudo chown root:root extensions
sudo chmod 700 extensions
