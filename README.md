# Gnome-customization

> Gnome shell, theme and terminal customization (Pop Linux) 

* [Terminal Emulator](#install-terminal-emulator)
* [Gnome Tweaks](#gnome-tweaks)
  * [Gnome Extensions](#gnome-extensions)
* [Theme](#theme)
  * [Icons](#icons)
  * [Cursor](#cursor)
  * [Folder colors](#folder-colors)
* [Install Oh-my-Zsh](#install-oh-my-zsh)
  * [PowerLevel9K](#powerlevel9k)
  * [Install Fonts](#install-fonts)
* [Vim](#vim)
* [Ruby Gems](#ruby-gems)
* [Final](#final)
* [Languages Support](#languages-support)

## Install Terminal Emulator

Add terminal emulator [Tilix](https://gnunn1.github.io/tilix-web/#packages) (old Terminix), by downloading and installing the .deb package.

Alternatively you can install Terminator by running (you can easily remove the ugly red titlebar from the settings menu):
```bash
sudo apt-get install terminator
```

## Gnome Tweaks

First you need to install [Gnome Tweaks](https://linuxconfig.org/how-to-install-tweak-tool-on-ubuntu-18-04-bionic-beaver-linux) in order to add and configure the shell extensions easier.

_First add the repo and then install:_
```shell
$ sudo add-apt-repository universe
$ sudo apt install gnome-tweak-tool
```

### Gnome Extensions

From Ubuntu Software, you can search and install the below gnome extensions and then customize the settings of each extension as you like with Gnome Tweaks.

* Dash to dock
* Dash to panel
* Hide top bar
* Workspaces to dock
* Gno-menu
* Removable drive menu

_NOTE: If you use Pop.os like me, the Dash-to-Dock and Worspaces-to-dock extensions are preinstalled_

## Theme

Download 'SmoothDark' from this repository and add it to */usr/share/themes*

```bash
git clone https://github.com/pankaryp/Gnome-customization.git
cd Gnome-customization
sudo mv SmoothDark /usr/share/themes
```

### Icons

__Pop Icons__ (_In Pop.os obviously pop icon theme is the default one,so you dont need to install it_)

Install them by running:
```shell
sudo add-apt-repository ppa:system76/pop
sudo apt update
sudo apt install pop-icon-theme
```

### Cursor

Download and install [Breeze Cursor Theme](https://www.ubuntuupdates.org/package/kubuntu-ppa_backports/cosmic/main/base/breeze-cursor-theme). 

_NOTE: All the above can be configured through Gnome Tweaks._

![gnome-ext](img/gnome-ext.png?raw=true)

### Folder Color

Download and install [Folder Colors](http://foldercolor.tuxfamily.org/).

## Install Oh-my-Zsh

Install [Oh-my-Zsh](https://github.com/robbyrussell/oh-my-zsh).

```shell
# This requires curl, so first run:
sudo apt-get install curl

# Then install zsh
sudo apt-get install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### PowerLevel9K

Oh-my-Zsh theme:

Clone [Powerlevel9K](https://github.com/bhilburn/powerlevel9k) into .oh-my-zsh/custom/themes.

```shell
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

Download the .zshc configuration file from this repository and add it to your home directory (replacing the current .zshc)
```bash
# Clone the repo, if you have not already done it.
git clone https://github.com/pankaryp/Gnome-customization.git
cd zsh-config
sudo rm /home/.zshc && mv .zshc /home
```

Edit path with ur own username inside .zshr 5th line:
```txt
# Path to your oh-my-zsh installation.
  export ZSH="/home/UR_USER_NAME/.oh-my-zsh"
```

_NOTE: If you want to see the available colors inside your terminal just run:_
```bash
getColorCode background
#or
getColorCode foreground
```

### Install Fonts

In order for the command line icons to work, you need a custom font. You can download the font from this repository and install it, or you can choose another font from here [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts). 

Configure the custom font inside Tilix or Terminator.

![terminator](img/terminator.png?raw=true)

## Vim
Install vim
```bash
sudo apt-get install vim
```
Install SpaceVim:
At a minimum, SpaceVim requires git and curl to be installed. Both tools are needed for downloading plugins and fonts.
```bash
curl -sLf https://spacevim.org/install.sh | bash
```

Download the init.toml configuration file from this repository and add it to your home directory inside _.SpaceVim.d_ (replacing the current init.toml)
```bash
# Clone the repo, if you have not already done it.
git clone https://github.com/pankaryp/Gnome-customization.git
cd space-vim
sudo rm /home/.SpaceVim.d/init.toml && mv init.toml /home/.SpaceVim.d
```

![main-screen](img/main-screen.png?raw=true)

## Ruby Gems

Add Colorls and Lolcat for extra awesomeness (requires Ruby)

```shell
# Install ruby
sudo apt-get install ruby-full

# Add colorls gem
gem install colorls

# Add lolcat gem
gem install lolcat
```

## Final

![screen](img/screen.png?raw=true)

## Languages Support

### Java (OpenJDK)
```sh
# Execute the following command to install JRE:
sudo apt install default-jre

# Execute the following command to install JDK:
sudo apt install default-jdk

```

### Node.js (with nvm)
```sh
# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Install node js stable version (it may differ)
nvm install 10.16.0
```

### Go
```sh
# Apply latest updates
sudo apt-get update
sudo apt-get upgrade

# Download the latest Go language binary archive file
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz

# Extract files in desired location (/usr/local)
sudo tar -xvf go1.12.7.linux-amd64.tar.gz
sudo mv go /usr/local
```

### Rust (using rustup)
```sh
# Run this script and follow onscreen instructions
curl https://sh.rustup.rs -sSf | sh
```

### Elixir
```sh
# Add Erlang Solutions repo
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb

sudo apt-get update

# Install the Erlang/OTP platform and all of its applications
sudo apt-get install esl-erlang

#Install Elixir
sudo apt-get install elixir
```

### F#
```sh
# Add Mono repository to your package manager
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update

# Install Mono
sudo apt install mono-devel
sudo apt-get update

# Install F#
sudo apt-get install fsharp
```

### Dart
```sh
# Enable HTTPS for apt
sudo apt-get install apt-transport-https

# Get the Google linux package key
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'

# Set the location of the stable repository
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
sudo apt-get update

# Install Dart SDK
sudo apt-get install dart
```

### Lua
```sh
# Install development tools
sudo apt install build-essential libreadline-dev

#Then to build and install Lua, run the following commands to download the package tar ball, extract, build and install it
curl -R -O http://www.lua.org/ftp/lua-5.3.4.tar.gz
tar -zxf lua-5.3.4.tar.gz
cd lua-5.3.4
make linux test
sudo make install

# Download and unpack the LuaRocks tarball using following commands. (We use version 3.1.3 here)
wget https://luarocks.org/releases/luarocks-3.1.3.tar.gz
tar zxpf luarocks-3.1.3.tar.gz
cd luarocks-3.1.3

# Run
./configure. 
#this will attempt to detect your installation of Lua

# Run
make build

# Run
sudo make install
```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

