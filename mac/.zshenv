echo "Loading .zshenv file ...."

# Load the default .profile. The alias are read from profile
# [[ -s "$HOME/.profile" ]] && . "$HOME/.profile" || echo "File '$HOME/.profile' is not present. Please Symlink the file"

test -e $HOME/.profile && source $HOME/.profile || echo "File '$HOME/.profile' is not present. Please Symlink the file"
