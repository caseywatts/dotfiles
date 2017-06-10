short url: [caseywatts.com/dotfiles](caseywatts.com/dotfiles)

To set this up quickly for himself, Casey would:

```
git clone https://gist.github.com/caseywatts/9b2a0552bb45c6769a1d6a2087b9bf5c ~/.dotfiles
ln -s ~/.dotfiles/.* ~/; rm ~/.git 
```

That code ^, in English:
- clone this gist to `~/.dotfiles`
- symlink the dotfiles to the home directory where they'll be used
  - (all files that start with `.` except the `.git` directory)
  - (do you know a cleaner way to do this than the `rm`? lol I'd love to know!)


And then it can be managed by git commands `add, commit, push, pull, etc` in the `~/.dotfiles` 🎉