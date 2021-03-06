# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin:/usr/local/share/python/:$HOME/bin # Add RVM to PATH for scripting
EDITOR=vim

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="agnoster"
ZSH_THEME="gentoo"

# aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias octoupdate='rake generate && git add . && git commit -m "Post Update" &'
#alias vi='/usr/local/bin/vim'
alias mvserien="~/scripts/filemover.py -s /data/Serien -d /data/diskstation_video/TV\ Serien"
alias feature="git checkout -b"
alias mwm="merge_with_master"
# cd
alias ..='cd ..'

# git-shortcuts
alias git="LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 git"
alias ga="git add"
alias g.="git add . && git status"
alias gb='git branch'
alias gc='git commit'
alias gca='git commit -am'
alias gco='git checkout'
alias gd="git diff"
alias gl="git log --pretty=oneline"
alias gp='git push'
alias gpl="git pull"
alias gs="git status"
alias gst="git stash"
alias feature="git checkout -b"
alias mwm="merge_with_master"


function merge_with_master {
    branch_name=$(git branch | grep "*" | sed "s/* //")
    test $branch_name = "master" &&\
    echo "Already on master, checkout your feature branch" && return
    git checkout master
    grep "origin" .git/config > /dev/null && git pull
    git merge --ff-only $branch_name && git branch -d $branch_name \
            && echo "You can now 'git push' your code" && return || \
            git checkout $branch_name
    echo "Your are behind master, a clean Merge is not possible!"
    echo -n "Should I rebase it with master and try it again? (y/n) "
    read ANSWER
    [[ -n `echo $ANSWER | grep '^[jyJY]'` ]] && \
            git rebase master && merge_with_master
}

if [ `uname` = "Darwin" ]; then
	alias vi='/usr/local/bin/vim'
	EDITOR=/usr/local/bin/vim
	GIT_EDITOR=/usr/local/bin/vim
	#. `brew --prefix`/etc/profile.d/z.sh
	PATH=$PATH:/Users/olif/Documents/adt-bundle-mac/sdk/platform-tools	

    #fix for problems with ruby and vim
    #https://docwhat.org/os-x-vim-with-ruby-crashes/
    #for i in /usr/local/opt/vim/bin/*(N) /usr/local/opt/macvim/bin/*(N); do
    #    i=$(basename $i)
    #        alias "${i}"="env -u GEM_PATH -u GEM_HOME command ${i}"
    #done
    #export GIT_EDITOR="env -u GEM_PATH -u GEM_HOME vim +1"
    #export EDITOR="env -u GEM_PATH -u GEM_HOME vim"
    #alias vi="env -u GEM_PATH -u GEM_HOME command vim"
    #alias vim="env -u GEM_PATH -u GEM_HOME command vim"
    #alias vimdiff="env -u GEM_PATH -u GEM_HOME command vimdiff"
    #alias vimtutor="env -u GEM_PATH -u GEM_HOME command vimtutor"
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
#source /usr/local/share/python/virtualenvwrapper.sh 

#GO
export GOPATH="/Users/olif/Projekte/go"

# The next line updates PATH for the Google Cloud SDK.
#source /Users/olif/google-cloud-sdk/path.zsh.inc

# # The next line enables bash completion for gcloud.
# source /Users/olif/google-cloud-sdk/completion.bash.inc

case `uname` in
	  Darwin)
	      #alias ls='ls -FG'
	      #echo "Darwin"
	      /usr/local/bin/archey -c
          ;;
          Linux)
	      #alias ls='ls -F --color=auto'
	      #echo "Linux"
	  ;;
esac

#source /usr/local/opt/autoenv/activate.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ansible env
export ANSIBLE_HOSTS=$VIRTUAL_ENV/../hosts
export ANSIBLE_HOST_KEY_CHECKING=False

