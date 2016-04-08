# .bash_profile ->  login shell
# Invoked as an interactive login shell: First reads and executes commands from the file /etc/profile, if it exists.
# Then it looks for ~/.bash_profile, ~/.bash_login, and ~/.profile, in that order,
# and reads and executes commands from the first one that exists and is readable.

# If you configure .bash_profile, no need to configure .profile
# To use a .profile, need to include the source ~/.profile in .bash_profile so that the .profile file is read

# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"


#sourcing .bashrc from .bash_profile, Just to be on the safer side
[[ -s ~/.bashrc ]] && source ~/.bashrc


# Adding aliases from a separate file
# . ~/.bash_aliases will source (load) aliases in the context of the currently running shell.
# The advantage of having all aliases in one file : easier to re-load them when changes are made.
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Setting up the Prompt - Dir Path on top line and Prompt in the immediate next
export PS1="\w\n>"
# export PS1="\W]\$ "
# export PS1="\u@\w $"

##
# Your previous /Users/nitin/.bash_profile file was backed up as /Users/nitin/.bash_profile.macports-saved_2016-01-14_at_14:21:56
##

# MacPorts Installer addition on 2016-01-14_at_14:21:56: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.