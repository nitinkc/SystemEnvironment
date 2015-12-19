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
