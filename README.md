# System Environment

### Global settings:
```sh
/etc/profile
/etc/bashrc
```

### Personal settings:

```sh
~/.bash_profile OR  ~/.bash_login OR ~/.profile
~/.bashrc
~/.bash_aliases
```

.bash_profile ->  login shell
.bashrc -> non-login shell.


* When a "login shell" starts up, it reads the file
	* /etc/profile and
	* then ~/.bash_profile or ~/.bash_login or ~/.profile
(*whichever one exists - it only reads one of these, checking for them in the order mentioned*).


* When you start a sub-shell (by typing a shell's name at the command-prompt), you get a "non-login shell".
	*When a "non-login shell" starts up, it reads the file "/etc/bashrc" and then the file "~/.bashrc".


# Semlink the files to be consistent with further edits

Assuming the project is cloned in $HOME/Programming folder on a new mac

The following commands will symlink the files and be modified for later use on other macs
```sh
# ~ refers to $HOME Directory
ln -s $HOME/Programming/SystemEnvironment/mac/.my_aliases ~
ln -s $HOME/Programming/SystemEnvironment/mac/.profile ~
ln -s $HOME/Programming/SystemEnvironment/mac/.zshrc ~

#Keep these two for the Terminal (incase iTerm is not to be used)
ln -s $HOME/Programming/SystemEnvironment/mac/.bashrc ~
ln -s $HOME/Programming/SystemEnvironment/mac/.bash_profile ~
```

* $PATH variable, a list directory names separated by colon (:) characters
* The superuser has /sbinand /usr/sbin entries for easily executing system administration commands.


# OS X: Change your PATH environment variable

### Setting Temporary Environmental Variables in OS X
`export PATH=$PATH:~/bin`

### Adding a Temporary Location
`PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin`

### Adding in a Permanent Location
create a .bash_profile or .profile file in the home directory and set the path in the files as.
`sh export PATH="/usr/local/<my_package>/bin:$PATH" `

### Setting up iTerm
[iTerm Configuration with PowerLine10K](https://nitinkc.github.io/developer%20tools/iterm2-zsh-config/)


### While using zsh

the following order of files load upon 

/etc/zshenv    # Read for every shell
~/.zshenv      # Read for every shell except ones started with -f
/etc/zprofile  # Global config for login shells, read before zshrc
~/.zprofile    # User config for login shells
/etc/zshrc     # Global config for interactive shells
~/.zshrc       # User config for interactive shells
/etc/zlogin    # Global config for login shells, read after zshrc
~/.zlogin      # User config for login shells
~/.zlogout     # User config for login shells, read upon logout
/etc/zlogout   # Global config for login shells, read after user logout file
