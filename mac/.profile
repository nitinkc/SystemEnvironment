# In any New System, change the paths of these ENV Variables
# Setting JAVA_HOME
#Picks up heighest Java from /Library/Java/JavaVirtualMachines path
#export JAVA_HOME=$(/usr/libexec/java_home)

#Manually setting up the Java 1.8 due to Projects requirements
# By default, every time the terminal loads, JAVA 8 gets set in priority.
#In case java 15 was set in the previous session, this setting overrides it
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_261.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.10.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin

# Android Development Related SDK settings
#export ANDROID_HOME=/Applications/a.Development/android-sdk-macosx
#export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME
#export PATH=$PATH:/Users/nitin/Library/Android/sdk/platform-tools

# Setting Maven Home
export M2_HOME=/usr/local/Cellar/maven/3.6.3_1
export PATH=$PATH:$M2_HOME/bin

# Gradle Path
export GRADLE_HOME=/Applications/devTools/gradle-6.6.1
#export GRADLE_HOME=/usr/local/Cellar/gradle/6.7
export PATH=$PATH:$GRADLE_HOME/bin

# Load RVM into a shell session *as a function*
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Setup Ruby & Ruby Gems: Overriding default mac's /opt/usr ruby2.3 for ruby 2.6 in the below directory
export RUBY_HOME=/usr/local/opt/ruby
export RUBY_GEMS_HOME=/usr/local/lib/ruby/gems/2.6.0
export PATH=$RUBY_HOME/bin:$RUBY_GEMS_HOME/bin:$PATH

#https://jekyllrb.com/docs/installation/macos/
#Every time you update Ruby to a version with a different first two digits, you will need to update your path to match
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

# Setup Groovy Path Apr 07 2016
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export PATH=$GROOVY_HOME/bin:$PATH

# added by Anaconda3 5.1.0 installer
#export PATH="/Users/nitin/anaconda3/bin:$PATH"

#Project related setup
#export SPANNER_EMULATOR_HOST=localhost:9010

export LIQUIBASE_HOME=/usr/local/opt/liquibase
export PATH=$LIQUIBASE_HOME/:$PATH

export GOPATH=/usr/local/go
export PATH=$GOPATH/bin:$PATH

export X=$GOPATH/bin/harbourbridge
export PATH=$X/bin:$PATH

# FINALLY CLUB ALL PATHS TOGETHER AND SET THE FINAL PATH VARIABLE
# MacPorts Installer addition on 2013-09-05_at_12:10:03: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:$PATH

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
#shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
alias java8='export JAVA_HOME=$JAVA_8_HOME'

export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
alias java11='export JAVA_HOME=$JAVA_11_HOME'

# export JAVA_9_HOME=$(/usr/libexec/java_home -v9)
# alias java9='export JAVA_HOME=$JAVA_9_HOME'
# export JAVA_10_HOME=$(/usr/libexec/java_home -v10)
# alias java10='export JAVA_HOME=$JAVA_10_HOME'
# export JAVA_12_HOME=$(/usr/libexec/java_home -v12)
# alias java12='export JAVA_HOME=$JAVA_12_HOME'
# export JAVA_13_HOME=$(/usr/libexec/java_home -v13)
# alias java13='export JAVA_HOME=$JAVA_13_HOME'
# export JAVA_14_HOME=$(/usr/libexec/java_home -v14)
# alias java14='export JAVA_HOME=$JAVA_14_HOME'
# export JAVA_15_HOME=$(/usr/libexec/java_home -v15)
# alias java15='export JAVA_HOME=$JAVA_15_HOME'