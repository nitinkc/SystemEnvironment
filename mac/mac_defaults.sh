####### ONLY ONE TIME SET UP IS NEEDED> DO NOT INCLUDE THE SCRIPT IN THE PROFILE PATH ###########

# Set Sublime as Default Text editor. Find the exact key under CFBundleIdentifier in Info.plist of the App
#cat /Applications/Development/Sublime\ Text.app/Contents/Info.plist
#<key>CFBundleIdentifier</key>	<string>com.sublimetext.4</string>
defaults write com.apple.LaunchServices LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.4;}';killall Finder /System/Library/CoreServices/Finder.app;
defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.4;}';killall Finder /System/Library/CoreServices/Finder.app;

#Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES;killall Finder /System/Library/CoreServices/Finder.app;

# Shows the full path on the Finder's Window top
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES;killall Finder

# Remove the delays in the Dock
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock

# Disable Delete message
defaults delete com.apple.finder NSUserKeyEquivalents;killall Finder

# Show Library Folder
chflags nohidden ~/Library/;killall Finder;say Library Revealed

##################### SCREENSHOT ######################################
# Set the Folder for Screenshots
directory="$HOME/Pictures/screenshots"
#Create the directory if it does not exist.
[ ! -d "$directory" ] && mkdir -p "$directory"; echo "Directory '$directory' created." ||  echo "Directory '$directory' already exists."

# Change Screenshot File Type
defaults write com.apple.screencapture type -string "png"
# Change Screenshot Location
defaults write com.apple.screencapture location "$directory"
##################### ########## ######################################



