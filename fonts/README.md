## Font

### Install

> Linux
```Linux
mkdir -p ~/.local/share/fonts
rm -rf ~/.local/share/fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
cp ~/.rescld-nvim/fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/.local/share/fonts
fc-cache -vf ~/.local/share/fonts
```

> Android
```Android
rm -rf ~/.termux/font.ttf
mkdir ~/.termux
cp ./fonts/DejaVu.ttf ~/.termux/font.ttf
REL="am broadcast --user 0 -a com.termux.app.reload_style com.termux"
$REL > /dev/null
```

> MacOS
```MacOS
rm -rf ~/Library/Fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
cp ./fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/Library/Fonts
```
