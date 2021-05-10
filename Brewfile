## Description
# CLI tools managed by `brew`
# Most GUI apps managed by `cask`
# Other GUI apps managed by `mas` (OSX App Store)
# Fonts managed by FontBase (installed via Cask)
# OSX Settings managed in `osx-settings-setup.sh`

## Inspired by
# This most thorough Brewfile by joelparkerhenderson: https://github.com/joelparkerhenderson/brewfile/blob/6c645a49b73bb2f78adeb72e057e554295b26c0b/Brewfile
# Great OSX Settings by jbelke: https://gist.github.com/jbelke/4496b2b1d7900d7971802332234bd781
# I learned about `mas` from filler: https://github.com/filler/dotfiles/blob/master/Brewfile
# More ideas from bengm: https://github.com/bengm/mac-config/blob/master/Brewfile

## Setup
tap "homebrew/bundle"
tap "homebrew/cask-drivers"
tap "homebrew/cask-versions"
tap "homebrew/core"
tap "homebrew/dupes"
tap "homebrew/services"
tap "homebrew/versions"
brew "mas"
mas "Xcode", id: 497799835

## Base CLI
brew "curl"
brew "gist"
brew "git"
brew "graphviz"
brew "grep"
brew "pandoc"
brew "wget"
brew "youtube-dl"
brew "zsh"

## Coding CLI
brew "python"
brew "python3"
brew "awscli"
brew "coreutils"
brew "go"
brew "htop"
brew "imagemagick"
brew "jq"
brew "node"
brew "openssh"
brew "openssl"
brew "rbenv"
brew "ruby-build"
brew "rust"
brew "sqlite"
brew "vim"
brew "yarn"

## Apps - General, Communication
cask 'bitwarden'
cask 'caffeine'
cask 'charles'
cask 'kindle'
cask "adobe-acrobat-reader"
cask "discord"
cask "firefox"
cask "google-chrome"
cask "iexplorer"
cask "libreoffice"
cask "signal"
cask "skype"
cask "slack"
cask "visual-studio-code"
cask "vivaldi"
cask "vlc"
cask "workflowy"
cask "zoomus"

## Apps - Writing
# sumatra pdf - windows only
cask "kindle-previewer"
cask "zettlr"
cask "zotero"

## Apps - Games
# riot games - bad OSX support
cask "epic-games"
cask "minecraft"
cask "origin"
cask "steam"

## Apps - Audio, Video, Design
# Davinci Resolve https://apps.apple.com/us/app/davinci-resolve/id571213070?mt=12
# focusrite https://apps.apple.com/us/app/focusrite-control/id1127384645
# Manual: Roli Dashboard, Roli Connect, Roli Studio https://roli.com/products/software
# subtitle edit not on OSX?
cask "audacity"
cask "blender"
cask "figma"
cask "fl-studio"
cask "fontbase"
cask "musescore"
cask "obs-websocket"
cask "obs"
cask "softube-central"
cask "unity"
cask "waves-central"
mas "Affinity Designer", id: 824171161
mas "GarageBand", id: 682658836
mas "Keynote", id: 409183694

## Nicer plugins for QuickLook.
cask "qlcolorcode"
cask "qlstephen"
cask "qlmarkdown"
cask "quicklook-json"
cask "webpquicklook"
cask "qlimagesize"
cask "qlprettypatch"
cask "quicklook-csv"
cask "betterzipql"
cask "suspicious-package"

## Trying These Out
brew "exif"
brew "exiftags"
brew "exiftool"
brew "libexif"
brew "libjpeg"
brew "jpegoptim"
brew "shellcheck"
brew "colordiff"
cask 'bartender'