# When you need to clean install Linux Mint MATE, you need to follow these flow.

# Setup base system
mirror server

system update

hardware device -> nvidia driver

japanese package

system recovering utility

Mozc -> ,.

# Install applications
google-chrome

Gimp

Inkscape

Shotcut

Openshot

Steam

# Web site
download google chrome -> add chrome to panel

# Panel
add workspace

# Terminal
size -> 105x80

font size -> Monospace Regular 13

auto start -> command : /usr/bin/mate-terminal --geometry=104x60+960+0

# Change directory names english
$ LANG=C xdg-user-dirs-gtk-update

# Git and dotfile
$ sudo apt install python3-pip

$ sudo apt get install neovim

$ sudo apt install git

$ git clone https://github.com/hisakot/dotfile

$ cd dotfile

$ ./install.sh

$ mkdir ~/.config/nvim

$ mkdir ~/.config/nvim/dein

$ mkdir ~/.config/evince

$ ./link.sh

git ssh

$ cd ~/.ssh

$ ssh-keygen -t rsa -> 3 times enter or file name, 2 enter

https://github.com/settings/ssh add ssh key(id_rsa.pubの中身)

$ ssh -T git@github.com -> check connection

$ vim ~/.gitconfig -> add below

    [url "git@github.com:"]

	InsteadOf = https://github.com/

# Neovim latest vertsion
$ curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage

$ chmod u+x nvim.appimage

$ ./nvim.appimage

# If neovim dein error because of python2 provider (vim -> :checkhealth)
$ which python{,2,3} -> /usr/bin/python3

$ sudo apt install -y python2

$ which python{,2,3} -> /usr/bin/python3 "and" /usr/bin/python2

$ sudo apt install python-pip

$ python2 -m pip install --user --upgrade pynvim

# If neovim deoplete error because of jedi module is not installed
$ pip3 install jedi

# SSH
$ sudo apt install openssh-server

$ sudo systemctl status ssh

$ sudo /etc/ssh/sshd_config -> add "Port portnumber" under "#Port 22"

$ sudo systemctl restart ssh

$ sudo systemctl restart sshd

# Tex
$ sudo apt install latexmk

$ sudo apt install texlive-lang-japanese

$ sudo apt install texlive-full

download jlisting.sty
(https://ja.osdn.net/projects/mytexpert/downloads/26068/jlisting.sty.bz2/)

$ bunzip2 jlisting.sty.bz2

$ sudo mkdir /usr/share/texlive/texmf-dist/tex/latex/jlisting

$ sudo cp jlisting.sty /usr/share/texlive/texmf-dist/tex/latex/jlisting/

$ cd /usr/share/texlive/texmf-dist/tex/latex/jlisting

$ sudo mktexlsr

# Machine Learning
pytorch -> visit pytorch site and choose your emvironment
