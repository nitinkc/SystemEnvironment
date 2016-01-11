alias myAlias='cat ~/.bash_aliases'
alias c='clear'

# Show/Hide Hidden Files in Mac
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES;killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO;killall Finder /System/Library/CoreServices/Finder.app'

# Find the Speed of the Internet
alias netSpeed='curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias netspeed='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zipsho'

# Shows the full path on the Finder's Window top
alias showPath='defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES;killall Finder'
alias hidePAth='defaults write com.apple.finder _FXShowPosixPathInTitle -bool NO;killall Finder'

# Convert file from some other system that has foreign line-endings into "Unix" line-endings by running this Perl command:
# The function makes a backup copy of the original file with a "~" suffix before editing the original file to change it to use "Unix" line-endings.
USE: fixlines nitin.txt
fixlines () { 
	/usr/bin/perl -pi~ -e 's/\r\n?/\n/g' "$@" ; 
}

# Maven Clean 
alias mvnClean='mvn clean eclipse:eclipse -Dwtpversion=2.0'

# JBoss Server Start
alias startJboss='cd /usr/local/jboss-6.0.0.Final/bin ; ./run.sh'

# All ports occupied
alias ports='lsof -i -P | grep -i "listen"'

# is8080 Occupied
alias is8080='lsof -i 4tcp:8080 -sTCP:LISTEN'