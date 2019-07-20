# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/YOUR_USERNAME_HERE/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# Zsh theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# Terminal font
POWERLEVEL9K_MODE="nerdfont-complete"

# Powerlevel9k configuration
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='\uf197  '
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
	custom_alien 
	virtualenv 
	rust_version 
	context 
	dir 
	vcs
	aws
)

# Powerlevel9k default values change
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="gold1"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black"

POWERLEVEL9K_DIR_HOME_BACKGROUND="deepskyblue1"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="deepskyblue3"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="deepskyblue3"
POWERLEVEL9K_DIR_ETC_BACKGROUND="cyan2"

POWERLEVEL9K_VCS_CLEAN_BACKGROUND="seagreen2"
POWERLEVEL9K_VCS_UNTRACTED_BACKGROUND="maroon"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="green1"

POWERLEVEL9K_VIRTUALENV_BACKGROUND="purple"
POWERLEVEL9K_RUST_VERSION_BACKGROUND="darkorange"

# NERD ICONS
# Alien
POWERLEVEL9K_CUSTOM_ALIEN="echo -n '\ue36e'"
POWERLEVEL9K_CUSTOM_ALIEN_FOREGROUND="white"
POWERLEVEL9K_CUSTOM_ALIEN_BACKGROUND="orange4"

# Ruby gems
source $(dirname $(gem which colorls))/tab_complete.sh

# Gem aliases
alias lc='colorls'
alias npml='npm list -g --depth=0 | lolcat'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#Export Go variables
export GOROOT=/usr/local/go
export GOPATH=$HOME/Documents/Workspaces/Go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Export nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Export Dart
export PATH=/usr/lib/dart/bin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/runtime-daemon/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/runtime-daemon/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh

# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/runtime-daemon/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/runtime-daemon/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/runtime-daemon/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /home/runtime-daemon/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh