short url: [caseywatts.com/dotfiles](caseywatts.com/dotfiles)

## Setup

### Getting the files there
To set this up quickly for himself, Casey would:

```
sudo apt install zsh
git clone https://github.com/caseywatts/dotfiles ~/.dotfiles
ln -s ~/.dotfiles/.* ~/; rm ~/.git
```

This symlinks the dotfiles to the home directory where they'll be used.
  - (do you know a cleaner way to do this than the `rm`? lol I'd love to know!)

### ZSH Setup
- Install zsh/oh-my-zsh [see here](https://github.com/robbyrussell/oh-my-zsh#basic-installation) (disclaimer: I haven't done this lately. Am I missing a step?)
- Install `zsh-syntax-highlighting`, see [here](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
- then remove `~/.zshrc` and re-do the `ln` command from above

### Other Setup
- OSX Terminal
  - make the background black and the text white; font size to 13; 'consolas' font
  - make ctrl+tab work [see here](https://superuser.com/questions/26100/using-ctrl-tab-to-switch-between-tabs-in-mac-terminal-app)
  - check "Use Option as Meta key" under "Terminal -> Preferences -> Profiles -> Keyboard" to make move-by-word and delete-by-word work (alt+left, alt+right, alt+backspace)

## Maintaining it
These dotfiles can now be managed by git commands `add, commit, push, pull, etc` in the `~/.dotfiles` directory 🎉
