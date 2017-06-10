### ZSH ###
# uses the plugin zsh-syntax-highlighting
# see https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh
# basically - run this once:
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git bundler vi-mode zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh



### THE MOST IMPORTANT PART ###

# Search History (autocomplete style~)
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward



### JUST PATHY THINGS ###

# what things use this? probably git at least
export EDITOR=atom

# something about the C language? I wish I took better notes lol
export LC_ALL=en_US.UTF-8

# tell nokogiri to use sysem libraries instead of compiling packaged libs
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1

# idk? from zsh?
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/Users/caseywatts/.rvm/bin:/Users/caseywatts/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# HUE
export LDFLAGS=-L/usr/local/opt/openssl/lib && export CPPFLAGS=-I/usr/local/opt/openssl/include

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# openssl
export PATH="/usr/local/opt/openssl/bin:$PATH"



### MY ALIASES ###

# aliases
function dl() {youtube-dl --no-mtime -x --audio-format mp3 -o "%(title)s.%(ext)s" "$*"}
function ddl() {cd ~/Downloads && youtube-dl --no-mtime -x --audio-format mp3 -o "%(title)s.%(ext)s" "$*"}
function dld() {cd ~/Downloads && youtube-dl --no-mtime -x --audio-format mp3 -o "%(title)s.%(ext)s" "$*"}
alias openwork='atom $(git ls-files -m)'
alias pushit="git push -u origin $(git symbolic-ref --short -q HEAD)"
alias bs='browser-sync start . -s --files "*.html, *.css"'


# servers
alias minecraft="ssh -i ~/.ssh/minecraft.pem ec2-user@34.201.76.17"




### Old things I probably don't need ###
### but I'm not 100% sure yet so they're sticking around ###

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
