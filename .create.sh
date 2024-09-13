if ! [ -x "$(command -v code)" ];
then
    cd
    mkdir not_installed
    exit
fi

code --install-extension oliver-ni.web-cat-vscode
code --install-extension vscjava.vscode-java-pack
