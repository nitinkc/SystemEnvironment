echo "Loading .zshenv file ...."

# Load the default .profile. The alias are read from profile
# [[ -s "$HOME/.profile" ]] && . "$HOME/.profile" || echo "File '$HOME/.profile' is not present. Please Symlink the file"

test -e $HOME/.profile && source $HOME/.profile || echo "File '$HOME/.profile' is not present. Please Symlink the file"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '${HOME}/Development/google-cloud-sdk/path.zsh.inc' ]; 
  then . '${HOME}/Development/google-cloud-sdk/path.zsh.inc'; 
fi

# The next line enables shell command completion for gcloud.
if [ -f '${HOME}/Development/google-cloud-sdk/completion.zsh.inc' ]; 
  then . '${HOME}/Development/google-cloud-sdk/completion.zsh.inc'; 
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
