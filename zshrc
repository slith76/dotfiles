# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin:/usr/local/share/python/ # Add RVM to PATH for scripting
EDITOR=vim

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias octoupdate='rake generate && git add . && git commit -m "Post Update" &'
#alias vi='/usr/local/bin/vim'
alias mvserien="~/scripts/filemover.py -s /data/Serien -d /data/diskstation_video/TV\ Serien"

if [ `uname` = "Darwin" ]; then
	alias vi='/usr/local/bin/vim'
	EDITOR=/usr/local/bin/vim
	GIT_EDITOR=/usr/local/bin/vim
	. `brew --prefix`/etc/profile.d/z.sh
	PATH=$PATH:/Users/olif/Documents/adt-bundle-mac/sdk/platform-tools	
fi

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx ruby brew rvm history github)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...


## cdargs
function cv () {
           cdargs "$1" && cd "`cat "$HOME/.cdargsresult"`" ;
       }

#Powerline
#. ~/.vim/bundle/powerline/bindings/zsh/powerline.zsh

## Python/Virtualenv/Django-Settings
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/share/python/virtualenvwrapper.sh 
