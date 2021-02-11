# System Environment

## Setting Mac Terminal environment for Development

### Unix shell and Framework installation

Between iTerm and Hyper, iTerm is preferred here. Download and install iTerm
```
brew cask install iterm2
```

Instead of using the Mac default Bash shell, preferred here is zsh with multiple plugin support.

* Install latest version of zsh using brew and verify the version.

```
brew install zsh zsh-completions
zsh --version
```

* Make zsh as system’s default shell
```
chsh -s $(which zsh)
```
* Verify:

```
echo $SHELL
expected result: /bin/zsh
```

* Install oh-my-zsh using [this link](https://ohmyz.sh/#install)

##### [Follow This Link](https://medium.com/swlh/power-up-your-terminal-using-oh-my-zsh-iterm2-c5a03f73a9fb)

##### [Follow this link as well](https://towardsdatascience.com/customising-the-mac-terminal-to-increase-productivity-and-improve-the-interface-894f6d86d573)

### Install Powerline 10k

```
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```
Run either
```
p10k configure
```
OR

Edit ~/.zshrc and set ZSH_THEME="powerlevel10k/powerlevel10k".


### Install plugins

* [Auto suggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)

* [Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

* [Zsh Completions](https://github.com/zsh-users/zsh-completions/#Manual%20installation)

* [Zsh history substring](https://github.com/zsh-users/zsh-history-substring-search)

* [Zsh Apple touchbar](https://github.com/zsh-users/zsh-apple-touchbar)
```
brew install zsh-syntax-highlighting
```

Global settings:
`
/etc/profile
/etc/bashrc
`

Personal settings:
`
~/.bash_profile OR  ~/.bash_login OR ~/.profile
~/.bashrc
~/.bash_aliases
`

.bash_profile ->  login shell
.bashrc -> non-login shell.

When you start a sub-shell (by typing a shell's name at the command-prompt), you get a "non-login shell".

When a "login shell" starts up, it reads the file
"/etc/profile" and
then "~/.bash_profile" or "~/.bash_login" or "~/.profile"
(whichever one exists - it only reads one of these, checking for them in the order mentioned).

When a "non-login shell" starts up, it reads the file "/etc/bashrc" and then the file "~/.bashrc".

#Semlink the files to be consistent with further edits
```sh
ln -s .bash_aliases ~
ln -s .bash_profile ~
ln -s .bashrc ~
ln -s .profile ~
```

-> $PATH variable, a list directory names separated by colon (:) characters
-> The superuser has /sbinand /usr/sbin entries for easily executing system administration commands.


#OS X: Change your PATH environment variable

###Setting Temporary Environmental Variables in OS X
`export PATH=$PATH:~/bin`

###Adding a Temporary Location
`PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin`

###Adding in a Permanent Location
create a .bash_profile or .profile file in the home directory and set the path in the files as.
`sh export PATH="/usr/local/<my_package>/bin:$PATH" `
