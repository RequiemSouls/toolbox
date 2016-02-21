#!/bin/bash
Platform=$(uname)
DICTDIR="/usr/share/stardict/dic"
OS="unknow"
function extract {
    filename=$(basename $1)
    tar -xf $filename -C $2
    rm -rf $filename
}
if [ "$Platform" = "Linux" ]; then
    OS="linux"
    instCMD="sudo apt-get install sdcv"
    function download {
        wget $1
        extract $1 $DICTDIR
    }
elif [ "$Platform" = "Darwin" ]; then
    OS="macosx"
    instCMD="brew install sdcv"
    function download {
        filename=$(basename $1)
        curl $1 -o filename
        extract $1 $DICTDIR
    }
else
    echo "unsupport platform"
    exit
fi

echo "install sdcv on" $OS
echo "********************************"
eval $instCMD
echo "********************************"
if [ -d "$DICTDIR" ]; then
    echo "user dir is exist"
else
    echo "user dir not exist. create dir"
    sudo mkdir -p $DICTDIR
fi
echo "*******************************"
echo "download dict...."
download http://download.huzheng.org/zh_CN/stardict-oxford-gb-2.4.2.tar.bz2
download http://download.huzheng.org/zh_CN/stardict-langdao-ec-gb-2.4.2.tar.bz2
download http://download.huzheng.org/zh_CN/stardict-langdao-ce-gb-2.4.2.tar.bz2
download http://download.huzheng.org/zh_CN/stardict-DrEye4in1-2.4.2.tar.bz2
download http://download.huzheng.org/zh_CN/stardict-21shijishuangyukejicidian-2.4.2.tar.bz2
echo "install over."