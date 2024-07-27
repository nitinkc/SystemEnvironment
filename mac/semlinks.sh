# ~ refers to $HOME Directory
ln -s $HOME/Programming/SystemEnvironment/mac/.zshenv ~
ln -s $HOME/Programming/SystemEnvironment/mac/.zshrc ~

# personal settings
ln -s $HOME/Programming/SystemEnvironment/mac/.my_aliases ~
ln -s $HOME/Programming/SystemEnvironment/mac/.profile ~
ln -s $HOME/Programming/SystemEnvironment/mac/.zprofile ~

# Global Git settings
ln -s $HOME/Programming/SystemEnvironment/mac/.gitconfig ~
ln -s $HOME/Programming/SystemEnvironment/mac/.gitconfig-learn ~
ln -s $HOME/Programming/SystemEnvironment/mac/.gitconfig-work ~
ln -s $HOME/Programming/SystemEnvironment/mac/.gitignore_global ~

#Keep these two for the Terminal (incase iTerm is not to be used)
ln -s $HOME/Programming/SystemEnvironment/mac/.bashrc ~
ln -s $HOME/Programming/SystemEnvironment/mac/.bash_profile ~

ln -s $HOME/Programming/SystemEnvironment/mac/.tmux.conf ~

# Alacritty
ln -s $HOME/Programming/SystemEnvironment/mac/alacritty.toml ~/.config/alacritty

# Wizterm
ln -s $HOME/Programming/SystemEnvironment/mac/.wezterm.lua ~

# Sublime make it availabe in PATH
ln -s /Applications/Development/Sublime\ Text.app/Contents/SharedSupport/bin /usr/local/bin/.