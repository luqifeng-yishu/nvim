#!/bin/bash

function get_linux_distro(){
	if grep -Eq "Arch Linux" /etc/*-release; then
		echo "ArchLinux"
	elif grep -Eq "Manjaro Linux" /etc/*-release; then
		echo "Manjaro"
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

	ln -sf ${PWD}/autoload ~/.config/nvim
	ln -sf ${PWD}/init.vim ~/.config/nvim
	ln -sf ${PWD}/config ~/.config/nvim
	ln -sf ${PWD}/UltiSnips ~/.config/nvim
	ln -sf ${PWD}/coc-settings.json ~/.config/nvim
}

function install_fonts_on_linux(){
    mkdir -p ~/local/share/fonts
    rm -rf ~/.local/share/fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
    cp ${PWD}/fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/.local/share/fonts
    fc-cache -vf ~/.local/share/fonts
}

function print_logo(){
	color="$(tput setaf 6)"
	normal="$(tput sgr0)"
	printf "${color}"
	echo '                                                              '
	echo '  ____                _     _       _   ___     _____ __  __  '
	echo ' |  _ \ ___  ___  ___| | __| |     | \ | \ \   / /_ _|  \/  | '
	echo ' | |_) / _ \/ __|/ __| |/ _` |_____|  \| |\ \ / / | || |\/| | '
	echo ' |  _ <  __/\__ \ (__| | (_| |_____| |\  | \ V /  | || |  | | '
	echo ' |_| \_\___||___/\___|_|\__,_|     |_| \_|  \_/  |___|_|  |_| '
	echo '                                                              '
	printf "${normal}"
}

function install_software_on_archlinux(){
	yay -S vim neovim ctags python python-pip gcc git yarn xsel curl tar zip unarchiver unzip gzip ntfs-3g
}

function install_on_linux(){
	distro=`get_linux_distro`
	echo "Linux distro: "${distro}

	if [ ${distro} == "ArchLinux" ]; then
		install_software_on_archlinux
	elif [ ${distro} == "Manjaro" ]; then
		install_software_on_archlinux
	else
		echo "Not support Linux distro: "${distro}
		exit
	fi

	copy_files
	install_fonts_on_linux
	sudo -E pip install pynvim python-language-server
	sudo -E curl -sL install-node.now.sh/lts | bash
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
