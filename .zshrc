### ZSH ###
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell" # the default theme
plugins=(git bundler zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Docs for the oh-my-zsh plugins:
# git https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
# bundler https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/bundler
# zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting


### THE MOST IMPORTANT PART ###

# Search History (autocomplete style~)
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward



### JUST PATHY THINGS ###


# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# yarn
export PATH="$HOME/.yarn/bin:$PATH"


# openssl
export PATH="/usr/local/opt/openssl/bin:$PATH"

# tell nokogiri to use sysem libraries instead of compiling packaged libs
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1

# Philips HUE
# note to self: try removing this next time you use this, in case the #openssl above helps enough
export LDFLAGS=-L/usr/local/opt/openssl/lib && export CPPFLAGS=-I/usr/local/opt/openssl/include




### MY ALIASES ###

# aliases
function dl() {youtube-dl --no-mtime -x --audio-format mp3 -o "%(title)s.%(ext)s" "$*"}
function ddl() {cd ~/Downloads && youtube-dl --no-mtime -x --audio-format mp3 -o "%(title)s.%(ext)s" "$*"}
alias openwork='atom $(git ls-files -mo)' # open all modified or untracked files
alias pushit='git push -u origin $(git symbolic-ref --short -q HEAD)' # oh yeah saltnpepa
alias bs='browser-sync start . -s --files "*.html, *.css"' # way better than livereload!

alias el="cd ~/Code/elements"
alias dash="cd ~/Code/dashboard"
alias ahc="cd ~/Code/addons.heroku.com"
alias cw="cd ~/Code/caseywatts.github.io"


# see: caseywatts.com/darken
# accepts 2 arguments
#   - filename without extension (no .pdf)
#   - threshold value (default is 80 if none given)
# examples:
#  - darken SheetMusic_Papi 75
#  - darken SheetMusic_Papi
function darken() {
  DENSITY=${2:-80} # either the 2nd argument, or the default will be 80
  convert -density 300x300 $1.pdf -threshold $DENSITY% $1_$DENSITY.pdf
}



### Old things I probably don't need ###
### but I'm not 100% sure yet so they're sticking around ###


# what things use this? probably git at least?
# export EDITOR=atom

# something about the C language? I wish I took better notes lol
# export LC_ALL=en_US.UTF-8

# idk? from latex?
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/Users/caseywatts/.rvm/bin:/Users/caseywatts/bin"
# export MANPATH="/usr/local/man:$MANPATH"


# continuity ones?
# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# PATH=$PATH:$HOME/bin # Make personal scripts available
# PATH=$PATH:$HOME/.bin # Make dotfiles scripts available


#disable ctrl-s/suspension
# stty stop undef
# setopt NO_FLOW_CONTROL
# setopt magicequalsubst
# setopt interactivecomments
# bindkey '^R' history-incremental-search-backward
# autoload -U zrecompile

#ignore obnoxious stuff
# alias git='nocorrect git'
# alias rake='noglob rake'
# Add the following to your ~/.bashrc or ~/.zshrc


# Allow for local environment configuration in ~/.zsh/*.zsh
# if [ -d ~/.zsh ]; then
#   for config_file (~/.zsh/*.zsh); do
#     source $config_file
#   done
# fi

# RVM is a silly thing. This fixes tmux not loading gemset
# http://stackoverflow.com/a/6097090/3010499
# cd .
