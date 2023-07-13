echo "Reading .zshenv file ...."

# Load the default .profile. The alias are read from profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"