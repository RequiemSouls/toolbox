#!/bin/bash
function installPercol() {
    if [ ! -d "~/bin" ]; then
        mkdir ~/bin
    fi
    cd ~/bin
    echo "=================== download percol library ====================="
    if [ $1 == 0 ]; then
        wget https://github.com/mooz/percol/archive/master.zip
    else
        curl -LkO https://github.com/mooz/percol/archive/master.zip
    fi
    echo "======================== download over =========================="
    unzip ./master.zip
    mv ./percol-master ./percol
    rm -rf ./master.zip
    echo "======================== extract file over ======================"
    if [ -f "./percol.py" ]; then
        rm -rf ./percol.py
    fi
    ln -s ./percol/bin/percol ./percol.py
}
cp ./.percolff ~/
if hash wget 2>/dev/null; then
    echo 'use wget'
    installPercol 0
elif hash curl 2>/dev/null; then
    echo 'no wget~ so sad!'
    echo 'use curl'
    installPercol 1
else
    echo 'no curl/wget~ WTF?'
    echo 'please install wget or curl to install percol'
    return
fi
echo "add 'source .percolff' into .bashrc(linux)/.bash_profile(mac)"
echo "run 'source .bashrc(linux)/.bash_profile(mac)"