### ZSH ###
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell" # the default theme
plugins=(git bundler)
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

# general local/bin (for brew)
eval "$(/opt/homebrew/bin/brew shellenv)"


# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
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
# export PATH="/usr/local/opt/openssl/bin:$PATH"

# tell nokogiri to use sysem libraries instead of compiling packaged libs
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1

# Philips HUE
# note to self: try removing this next time you use this, in case the #openssl above helps enough
# export LDFLAGS=-L/usr/local/opt/openssl/lib && export CPPFLAGS=-I/usr/local/opt/openssl/include




### MY ALIASES ###

# aliases
function dl() {youtube-dl --no-mtime -x --audio-format mp3 -o "%(title)s.%(ext)s" "$*"}
function ddl() {cd ~/Downloads && youtube-dl --no-mtime -x --audio-format mp3 -o "%(title)s.%(ext)s" "$*"}
# alias openwork='atom $(git ls-files -mo)' # open all modified or untracked files
alias pushit='git push -u origin $(git symbolic-ref --short -q HEAD)' # oh yeah saltnpepa
alias bs='browser-sync start . -s --files "*.html, *.css"' # way better than livereload!

alias el="cd ~/Code/elements"
alias dash="cd ~/Code/dashboard"
alias ahc="cd ~/Code/addons.heroku.com"
alias cw="cd ~/Code/caseywatts.github.io"
alias ppu="cd ~/Code/partner-portal-ui"
alias gpf="git push --force-with-lease"
alias smush="git commit --amend --no-edit"
alias cleanup="git checkout --quiet main && git branch --merged | grep -v main | xargs -n 1 git branch -d && git checkout --quiet @{-1}"
alias quoteit="pbpaste | sed 's/^/> /' | pbcopy"
alias inspectclipboard="osascript -e 'the clipboard as record' | less"


# see: caseywatts.com/darken
# accepts 1 argument
#   - filename without extension (no .pdf)
# examples:
#  - darken SheetMusic_Papi
function darken() {
  originalFileName=${1%.*}
  echo "Darkening $originalFileName.pdf"
  convert -density 300x300 $originalFileName.pdf -monochrome -quality 100 $originalFileName-bw.pdf
  echo "Saved as $originalFileName (darkened).pdf"
}

function darkenseveral() {
  originalFileName=${1%.*}
  echo "Darkening $originalFileName.pdf"
  thresholds=(90% 95% 98% 99%)
  for threshold in "${thresholds[@]}"
  do
    # convert -density 300x300 $originalFileName.pdf -monochrome -quality 100 $originalFileName-bw.pdf
    convert $originalFileName.pdf -density 300x300 +dither -channel RGB -threshold $threshold "$originalFileName ($threshold).pdf"
    # convert $originalFileName.pdf -channel RGB -density 300x300 -sigmoidal-contrast 2x$threshold "$originalFileName ($threshold).pdf"
    # convert $originalFileName.pdf -channel RGB -auto-threshold OTSU "$originalFileName (bw).pdf"
    echo "Saved as $originalFileName ($threshold).pdf"
    # echo "Saved as '$originalFileName (bw).pdf'"
  done
}

# looping? use something like
# for file in *.jpg; convert -colorspace Gray $file $file; end;

# function docommandtoallfiles() {
#   fileNames=(file*)
#   for fileName in fileNames
#   do
#       echo "$fileName"
#   done
# }

# accepts 1 argument
#   - filename with extension (mp4)
# examples:
#  - loopit bouncing_ball.mp4
function loopit() {
  originalFileName=${1%.*}
  echo "Looping"
  ffmpeg -stream_loop 3 -i $originalFileName.mp4 -c copy "$originalFileName (looping).mp4"
  echo "From: $originalFileName.mp4"
  echo "To: $originalFileName (looping).mp4"
}

function dothespeeds() {
  originalFileName=${1%.*}
  speeds=( "0.5" "0.6" "0.7" "0.8" "0.9" "1.0" )
  echo "File: $originalFileName"
  for speed in "${speeds[@]}"
  do
    echo "Speed: $speed"
    ffmpeg -i $originalFileName.mp3 -filter:a "atempo=${speed}" -vn "speeds/$originalFileName $speed.mp3"
  done
}

# grabid
# grab id from the heroku api endpoint
# and then copy it into clipboard
#
# grabid /addon-services/deployhooks
# grabid /apps/powerful-hamlet-24622
function grabid() {
  thingId=$(heroku api get $1 | jq '.id' -r)
  echo "endpoint: $1"
  echo "id: $thingId"
  echo 'id copied to clipboard'
  printf $thingId | pbcopy # printf so no new line
}


### Old things I probably don't need ###
### but I'm not 100% sure yet so they're sticking around ###


# npm edit uses this, at least
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

# Heroku Autocomplete
fpath=( /Users/cwatts/.local/share/heroku/client/node_modules/cli-engine/autocomplete/zsh $fpath ); autoload -Uz compinit; compinit;

# Python user path to my path
export PATH=$PATH:/Users/cwatts/Library/Python/2.7

# set up asdf for elixir/erlang
# . $HOME/.asdf/asdf.sh
# . $HOME/.asdf/completions/asdf.bash

# for x server for electron on WSL2
export DISPLAY="`grep nameserver /etc/resolv.conf | sed 's/nameserver //'`:0"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
