# NeonGnome
![project customization](https://img.shields.io/badge/project-customization-brightgreen.svg?style=flat-square)

> Gnome shell, theme and terminal customization (on top of Pop!OS).

- [NeonGnome](#neongnome)
  - [Install Terminal Emulator](#install-terminal-emulator)
    - [Tilix](#tilix)
    - [Terminator](#terminator)
      - [Install Fonts](#install-fonts)
      - [Terminal Color Palette](#terminal-color-palette)
      - [Other Settings](#other-settings)
  - [Gnome Tweaks](#gnome-tweaks)
    - [Gnome Extensions](#gnome-extensions)
  - [Theme](#theme)
    - [SmoothDark](#smoothdark)
    - [Dracula](#dracula)
    - [Icons](#icons)
      - [Pop Icons](#pop-icons)
    - [Cursor](#cursor)
    - [Folder Color](#folder-color)
  - [Install Oh-my-Zsh](#install-oh-my-zsh)
    - [Spaceship Prompt](#spaceship-prompt)
  - [Vim](#vim)
  - [Ruby Gems](#ruby-gems)
  - [Final](#final)
  - [Languages Support](#languages-support)
    - [Node.js (with nvm)](#nodejs-with-nvm)
    - [Rust (using rustup)](#rust-using-rustup)
    - [Go](#go)
    - [Elixir](#elixir)
    - [Java (OpenJDK)](#java-openjdk)
    - [Lua](#lua)
    - [Crystal](#crystal)
    - [Haskell](#haskell)
    - [Elm](#elm)
  - [License](#license)

## Install Terminal Emulator

### Tilix

Add terminal emulator [Tilix](https://gnunn1.github.io/tilix-web/#packages) (old Terminix), by downloading and installing the package according to your distro.

### Terminator

Alternatively you can install **Terminator** by running: 
```bash
sudo apt-get install terminator
```

_(you can easily remove the ugly red titlebar from preferences/profiles, by unchecking the "show titlebar" option)_

![titlebar](img/1.titlebar.png?raw=true)

#### Install Fonts

In order for the command line icons to work, you need a custom font. You can download **Hack** font from this repository (inside fonts folder) and install it, or you can choose another font from here. [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts). 

Configure the custom font inside Tilix or Terminator.

![font](img/2.font.png?raw=true)

#### Terminal Color Palette

Change the colors of your terminal profile. You can find the hex codes below.

![colors](img/4.colors.png?raw=true)

![palette](img/5.palette.png?raw=true)

#### Other Settings

You can change other settings too, like the transparency of the window

![trans](img/7.trans.png?raw=true)


## Gnome Tweaks

First you need to install [Gnome Tweaks]() in order to add and configure the shell extensions.

```shell
sudo apt-get install gnome-tweaks
```

### Gnome Extensions

From **POP!OS Store**, you can install the **Extension Manager** in order to install some gnome extensions. 

_If you are not using POP!0S you don't need to install Extension Manager as there is a special tab in Gnome Tweaks to search and install gnome extensions._

Install the below gnome extensions and then customize the settings as you like with Gnome Tweaks or Extension Manager.

* Hide top bar
* Removable drive menu
* User Themes

![extensions](img/3.extensions.png?raw=true)

## Theme

### SmoothDark
Download **SmoothDark** from this repository and add it to `/usr/share/themes`

```bash
git clone https://github.com/pankaryp/NeonGnome.git
cd NeonGnome
sudo mv SmoothDark /usr/share/themes
```

### Dracula

Download using the GitHub .zip download option and extract the .zip file to the themes directory i.e. `/usr/share/themes/` or `~/.themes/` (create it if necessary). [Dracula GTK Theme](https://draculatheme.com/gtk). 

To activate the theme in Gnome, run the following commands in Terminal:
```shell
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"
```

### Icons

#### Pop Icons

(_In Pop.os obviously pop icon theme is the default one,so you dont need to install it_)

Install them by running:
```shell
sudo add-apt-repository ppa:system76/pop
sudo apt update
sudo apt install pop-icon-theme
```

### Cursor

Download and install [Breeze Cursor Theme](https://www.ubuntuupdates.org/package/kubuntu-ppa_backports/cosmic/main/base/breeze-cursor-theme). 

or via terminal

```shell
sudo apt-get update -y
sudo apt-get install -y breeze-cursor-theme
```

_NOTE: All the above can be configured through Gnome Tweaks._

![6.tweaks](img/6.tweaks.png?raw=true)

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

There are some useful aliases inside `.zshrc` as well. You can check them out.

### Spaceship Prompt

Clone this repo [SpaceShip](https://github.com/spaceship-prompt/spaceship-prompt)

```shell
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
```

Symlink `spaceship.zsh-theme` to your oh-my-zsh custom themes directory:

```shell
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

Set `ZSH_THEME="spaceship"` in your `.zshrc`.


Download the `.zshrc` configuration file from this repository and add it to your home directory (replacing the current .zshrc)

```bash
# Clone the repo, if you have not already done it.
git clone https://github.com/pankaryp/NeonGnome.git
cd NeonGnome
cd zsh-config
sudo rm /home/.zshrc && mv .zshrc /home
```

Spacechip prompt has tones of features like:


  - Clever hostname and username displaying
  - Current Git branch and rich repo status
  - Indicator for jobs in the background
  - Current Versions for a lot of supported programming languages

![8.prompt](img/8.prompt.png?raw=true)

## Vim

Install vim
```bash
sudo apt-get install vim
```
Install SpaceVim:
At a minimum, SpaceVim requires **git** and **curl** to be installed. Both tools are needed for downloading plugins and fonts.
```bash
curl -sLf https://spacevim.org/install.sh | bash
```

Download the `init.toml` configuration file from this repository and add it to your home directory inside `.SpaceVim.d` (replacing the current `init.toml`)

```bash
# Clone the repo, if you have not already done it.
git clone https://github.com/pankaryp/NeonGnome.git
cd NeonGnome
cd space-vim
sudo rm /home/.SpaceVim.d/init.toml && mv init.toml /home/.SpaceVim.d
```

## Ruby Gems

Add **Colorls** and **Lolcat** for extra awesomeness (requires Ruby)

```shell
# Install ruby
sudo apt-get install ruby-full

# Add colorls gem
sudo gem install colorls

# Add lolcat gem
sudo gem install lolcat
```

Customize **colorls** theme:

Replace the contents of `dark_colors.yaml` file inside `$(dirname $(gem which colorls))/yaml` with the contents of `dark_colors.yaml` file inside the `colorls-theme` folder. 

```shell
git clone https://github.com/pankaryp/NeonGnome.git
cd NeonGnome
cd colorls-theme
sudo mv dark_colors.yaml $(dirname $(gem which colorls))/yaml
```

## Final

![final](img/10.final.png?raw=true)

## Languages Support

### Node.js (with nvm)
```sh
# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Install node js stable version (it may differ)
nvm install 17.3.1
nvm use 17.3.1
```

### Rust (using rustup)
```sh
# Run this script and follow onscreen instructions
curl https://sh.rustup.rs -sSf | sh
```

### Go
```sh
# Apply latest updates
sudo apt-get update
sudo apt-get upgrade

# Download the latest Go language binary archive file
wget https://dl.google.com/go/go1.17.7.linux-amd64.tar.gz

# Extract files in desired location (/usr/local)
sudo tar -xvf go1.17.7.linux-amd64.tar.gz
sudo mv go /usr/local
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

### Java (OpenJDK)
```sh
# Execute the following command to install JRE:
sudo apt install default-jre

# Execute the following command to install JDK:
sudo apt install default-jdk

```

### Lua
```sh
# Install development tools
sudo apt install build-essential libreadline-dev

#Then to build and install Lua, run the following commands to download the package tar ball, extract, build and install it
curl -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz
tar -zxf lua-5.4.4.tar.gz
cd lua-5.4.4
make linux test
sudo make install

# Download and unpack the LuaRocks tarball using following commands. (We use version 3.1.3 here)
wget https://luarocks.org/releases/luarocks-3.8.0.tar.gz
tar zxpf luarocks-3.8.0.tar.gz
cd luarocks-3.8.0

# Run
./configure. 
#this will attempt to detect your installation of Lua

# Run
make build

# Run
sudo make install
```

### Crystal

```shell
# To install latest stable Crystal release from the official Crystal repository hosted on the Open Build Service run:
curl -fsSL https://crystal-lang.org/install.sh | sudo bash
```

### Haskell

```shell
sudo apt-get install haskell-platform
```

### Elm

```shell
# Download the 0.19.1 binary for Linux.
curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz

# Decompresses it, replacing `elm.gz` with `elm`
gunzip elm.gz

# Mark this file as executable
chmod +x elm

# Move the `elm` binary to one of the directories listed in your `PATH` environment variable
sudo mv elm /usr/local/bin/
```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

