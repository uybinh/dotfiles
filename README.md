# dotfiles

**Dotfiles help you personalize your system.** Mine, **made for macOS** and [MIT-licensed](LICENSE), include the following.

- global [`.editorconfig`](http://editorconfig.org/)
- [`.gitconfig`](http://git-scm.com/docs/git-config#EXAMPLES) and [`.gitignore`](http://git-scm.com/docs/gitignore#_examples)
- [`.npmrc`](https://docs.npmjs.com/files/npmrc)
- global [slap config](https://github.com/slap-editor/slap/blob/master/slap.ini)
- [`config.fish`](http://fishshell.com/docs/current/index.html#initialization)



##

The bare minimum required to install these dotfiles is [Bash](http://de.wikipedia.org/wiki/Bash_%28Shell%29) and [Git](http://git-scm.com/). Bash is already bundled with almost all operating systems. Read more about [how to install Git](https://gist.github.com/derhuerst/1b15ff4652a867391f03).

If you have an existing `~/dotfiles` directory, back it up.

```shell
mv ~/dotfiles ~/.config.backup
```

Then, clone this repository using Git.

```shell
git clone https://github.com/derhuerst/dotfiles.git ~/dotfiles
```

Now, you can symlink the configuration files you need.

```shell
ln -s ~/dotfiles/editorconfig/editorconfig ~/.editorconfig
ln -s ~/dotfiles/git/gitignore ~/.gitignore
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/dotfiles/homebrew/brew-aliases ~/.brew-aliases
ln -s ~/dotfiles/npm/npmrc ~/.npmrc
```

Additionaly, you can create a [`.hushlogin` file](https://kb.iu.edu/d/acdd) by typing `touch ~/.hushlogin`.

You can install the optional stuff these dotfiles support. Run `brew update` first.

software | how to install on OS X
:--------|:-------------------------
[NPM](https://nodejs.org/) | `brew install node`


## Contributing
