alias c='clear'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES;
killall Finder /System/Library/CoreServices/Finder.app'

alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO;
killall Finder /System/Library/CoreServices/Finder.app'

alias netSpeed='curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'

alias netspeed='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
