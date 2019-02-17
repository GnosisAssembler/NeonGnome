# Gnome-customization

> Gnome shell, theme and terminal customization.

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
* [Ruby Gems](#ruby-gems)
* [Final](#final)

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
* Workspaces to dock
* Gno-menu
* Removable drive menu

_NOTE:If you use Pop.os like me, the Dash-to-Dock nd Worspaces-to-dock extensions are preinstalled_

## Theme

Download 'SmoothDark' from this repository and add it to */usr/share/themes*

```bash
git clone https://github.com/pankaryp/Gnome-customization.git
cd Gnome-customization
sudo mv SmoothDark /usr/share/themes
```

### Icons

__Pop Icons__(_In Pop.os obviously pop icon theme is the default one,so you dont need to install it_)

Install them by running:
```shell
sudo add-apt-repository ppa:system76/pop
sudo apt update
sudo apt install pop-icon-theme
```

### Cursor

Download and install [Breeze Cursor Theme](https://www.ubuntuupdates.org/package/kubuntu-ppa_backports/cosmic/main/base/breeze-cursor-theme). 

_NOTE: All the above can be configured through Gnome Tweaks._

![theme-sample](img/theme-sample.png?raw=true)

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
sudo mv .zshc /home
```

### Install Fonts

In order for the command line icons to work, you need a custom font. You can download the font from this repository and install it, or you can choose another font from here [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts). 

Configure the custom font inside Tilix or Terminator.

![font-sample](img/font-sample.png?raw=true)


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

![final-sample](img/final-sample.png?raw=true)


