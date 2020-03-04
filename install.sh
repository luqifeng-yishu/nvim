#!/bin/bash

function get_linux_distro(){
	if grep -Eq "Arch Linux" /etc/*-release; then
		echo "ArchLinux"
	elif grep -Eq "Manjaro Linux" /etc/*-release; then
		echo "ManjaroLinux"
	else
		echo "Unknow"
	fi
}

function copy_files(){
	mkdir ~/.pip
	echo '[global]' >> ~/.pip/pip.conf
	echo 'index-url = https://pypi.tuna.tsinghua.edu.cn/simple' >> ~/.pip/pip.conf

	rm -rf ~/.config/nvim
	mkdir -p ~/.config/nvim

	ln -sf ~/.rescld-nvim/autoload ~/.config/nvim
	ln -sf ~/.rescld-nvim/init.vim ~/.config/nvim
	ln -sf ~/.rescld-nvim/config ~/.config/nvim
	ln -sf ~/.rescld-nvim/UltiSnips ~/.config/nvim
	ln -sf ~/.rescld-nvim/coc-settings.json ~/.config/nvim
}

function install_fonts_on_linux(){
    mkdir -p ~/.local/share/fonts
    rm -rf ~/.local/share/fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
    cp ~/.rescld-nvim/fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/.local/share/fonts
    fc-cache -vf ~/.local/share/fonts
}

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

function install_software_on_archlinux(){
	yay -Syyu vim neovim ctags python python-pip gcc git yarn xsel curl
	curl -sL install-node.now.sh/lts | bash
}

function install_on_linux(){
	distro=`get_linux_distro`
	echo "Linux distro: "${distro}

	if [ ${distro} == "ArchLinux" ]; then
		install_software_on_archlinux
	elif [ ${distro} == "ManjaroLinux" ]; then
		install_software_on_archlinux
	else
		echo "Not support Linux distro: "${distro}
		exit
	fi

	copy_files
	install_fonts_on_linux
	sudo pip install pynvim python-language-server
	sudo curl -sL install-node.now.sh/lts | bash
}

function main(){
	type=$(uname)
	echo "Platform type: "${type}

	if [ ${type} == "Linux" ]; then
		install_on_linux
	else
		echo "Not support platform type: "${type}
		exit
	fi

	print_logo
}

# begin
main
