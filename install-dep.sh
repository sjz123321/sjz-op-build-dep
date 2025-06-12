#!/bin/bash
# SPDX-License-Identifier: GPL-3.0-only
PWD_DIR="$(pwd)"

function install_mustrelyon(){
echo -e "\033[36m开始升级ubuntu插件和安装依赖.....\033[0m"
# 更新ubuntu源
apt-get update -y

# 升级ubuntu
apt-get full-upgrade -y

# 安装编译openwrt的依赖
apt-get install -y ecj fastjar file gettext java-propose-classpath time xsltproc lib32gcc-s1
apt-get install -y ack antlr3 asciidoc autoconf automake autopoint binutils bison build-essential \
bzip2 ccache cmake cpio curl device-tree-compiler flex gawk gcc-multilib g++-multilib gettext \
genisoimage git gperf haveged help2man intltool libc6-dev-i386 libelf-dev libfuse-dev libglib2.0-dev \
libgmp3-dev libltdl-dev libmpc-dev libmpfr-dev libncurses5-dev libncursesw5-dev libpython3-dev \
libreadline-dev libssl-dev libtool llvm lrzsz msmtp ninja-build p7zip p7zip-full patch pkgconf \
python2 python3 python3-pip python3-cryptography python3-docutils python3-ply python3-pyelftools python3-requests
python3-setuptools python3-distutils qemu-utils rsync scons squashfs-tools subversion swig \
texinfo uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev

# alist依赖
apt-get install -y libfuse-dev

# N1打包需要的依赖
apt-get install -y rename pigz clang gnupg snapd
snap install jq
apt-get install -y $(curl -fsSL https://tinyurl.com/ubuntu2204-make-openwrt)
