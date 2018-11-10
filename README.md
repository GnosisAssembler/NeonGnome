# Gnome-customization

> Gnome shell, theme and terminal customization.

*[Theme](#theme)

First you need to install [Gnome Tweaks](https://linuxconfig.org/how-to-install-tweak-tool-on-ubuntu-18-04-bionic-beaver-linux) in order to add and configure the shell extensions easier.

_For Ubuntu 18.04 Bionic Beaver_
```shell
$ sudo add-apt-repository universe
$ sudo apt install gnome-tweak-tool
```

## Install Terminal Emulator

Then add terminal emulator [Tilix](https://gnunn1.github.io/tilix-web/#packages) (old Terminix), by
downloading and installing the .deb package.

### Gnome Extensions

From Ubuntu Software, you can search and install the below gnome extensions and then customize the settings of each extension as you like with Gnome Tweaks.

* Dash to dock
* Workspaces to dock
* Flippery application menu
* Places status indicator
* Removable drive menu

### Theme

Download 'CustomDarkAdwaita' from this repository and add it to */usr/share/themes*

### Icons

Clone [La capitaine icon theme](https://github.com/keeferrourke/la-capitaine-icon-theme) and add it to *usr/share/icons*

```shell
git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git
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

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Install Oh-my-Zsh Theme (PowerLevel9K)

Clone [Powerlevel9K](https://github.com/bhilburn/powerlevel9k) into .oh-my-zsh/custom/themes.

```shell
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

Download the .zshc configuration file from this repository and add it to your home directory (replacing the current .zshc)

### Install Fonts

In order for the command line icons to work, you need a custom font. You can download the font from this repository and install it, or you can choose another font from here [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts). 

Configure the custom font inside Tilix.

![font-sample](img/font-sample.png?raw=true)

## Add Colorls and Lolcat for extra awesomeness (requires Ruby)

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


