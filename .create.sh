if ! [ -x "$(command -v code)" ];
then
    cd
    mkdir not_installed
    mkdir tag
    exit
fi

code --install-extension oliver-ni.web-cat-vscode
code --install-extension vscjava.vscode-java-pack
