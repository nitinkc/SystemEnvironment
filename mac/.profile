# In any New System, change the paths of these ENV Variables
# Setting JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home)

# Android Delelopment Related SDK settings
export ANDROID_HOME=/Applications/a.Development/android-sdk-macosx
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME
export PATH=$PATH:/Users/nitin/Library/Android/sdk/platform-tools

# Adding Gradle path manually on night of Aug 1, 2:03
export GRADLE_HOME=/Applications/a.Development/gradle-2.0
export PATH=$PATH:$GRADLE_HOME/bin

# Setting Maven Home
export M2_HOME="/usr/local/apache-maven-3.3.1"
export PATH=$PATH:$M2_HOME/bin

# Apache Ant
export ANT_HOME=/usr/local/apache-ant-1.9.6
export PATH=$PATH:ANT_HOME/bin

# Jboss
export JBOSS_HOME=/usr/local/jboss-6.0.0.Final

# Setting up the GO Path
export GOPATH=$HOME/go
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# MacPorts Installer addition on 2013-09-05_at_12:10:03: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH

# Setting Sublime as default editor for the all the text files (Do in ~/bash_profile)
# ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
#export EDITOR=`subl -w`

# Node Package Manager
# gets added in the /usr/local

# History of commands of History
HISTFILESIZE=2500
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"