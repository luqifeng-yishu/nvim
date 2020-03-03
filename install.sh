#!/bin/bash

# 获取系统版本
function get_linux_distro(){
	if grep -Eq "Arch Linux" /etc/*-release; then
		echo "ArchLinux"
	else
		echo "Unknow"
	fi
}

# 拷贝文件
function copy_files(){
	ln -sf ~/.rescld-nvim/init.vim ~/.config/nvim
	ln -sf ~/.rescld-nvim/UltiSnips ~/.config/nvim
	ln -sf ~/.rescld-nvim/coc-settings.json ~/.config/nvim
}

# 在Linux平台安装字体
function install_fonts_on_linux(){
    mkdir -p ~/.local/share/fonts
    rm -rf ~/.local/share/fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
    cp ~/.rescld-nvim/fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/.local/share/fonts
    fc-cache -vf ~/.local/share/fonts
}

# 打印logo
function print_logo(){
	color="$(tput setaf 6)"
	normal="$(tput sgr0)"
	printf "${color}"
	echo '                                               '
	echo ' ____    _____   ____     ____   _       ____  '
	echo '|  _ \  | ____| / ___|   / ___| | |     |  _ \ '
	echo '| |_) | |  _|   \___ \  | |     | |     | | | |'
	echo '|  _ <  | |___   ___) | | |___  | |___  | |_| |'
	echo '|_| \_\ |_____| |____/   \____| |_____| |____/ '
	echo '                                               '
	printf "${normal}"
}

# 在Arch系列安装
function install_software_on_archlinux(){
	yay -S vim neovim ctags python python-pip gcc jdk git ccls jdtls yarn xsel
	sudo pip install pynvim python-language-server
	sudo curl -sL install-node.now.sh/lts | bash
}

# 在Linux平台安装
function install_on_linux(){
	distro=`get_linux_distro`
	echo "Linux distro: "${distro}

	if [ ${distro} == "ArchLinux" ]; then
		install_software_on_archlinux
	elif [ ${distro} == "ManjaroLinux" ]; then
		install_software_on_archlinux
	else
		echo "Not support Linux distro: "${distro}
	fi

	copy_files
	install_fonts_on_linux
}


# 主函数
function main(){
	type=$(uname)
	echo "Platform type: "${type}

	if [ ${type} == "Linux" ]; then
		install_on_linux
	else
		echo "Not support platform type: "${type}
	fi

	print_logo
}

# 开始运行
main
