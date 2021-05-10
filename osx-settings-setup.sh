## OSX Settings setup, modified from jbelke https://gist.github.com/jbelke/4496b2b1d7900d7971802332234bd781
# Expand "Save" and "Print" panels.
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Use current directory as default search scope in Finder.
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Remove duplicate "Open With" options.
# /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

# Show extensions in Finder.
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show path in Finder.
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Allow selecting text in Quick Look.
defaults write com.apple.finder QLEnableTextSelection -bool true

# Use OSX print dialog in Chrome.
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true

# Copy email addresses, not names, from Mail.
# defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Quit Printer app when complete.
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Ignore Quarentine of unknown apps.
# defaults write com.apple.LaunchServices LSQuarantine -bool false

# Reboot to a clean slate.
# defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Enable "Tap to Click".
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
# defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
# defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Invert scrolling direction.
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Open Finder at "~/" directory.
defaults write com.apple.finder NewWindowTarget -string "PfLo" # Location
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Don't create temporary files to network mounted drives.
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Unhide "~/Library" folder.
chflags nohidden "~/Library"

# Add iOS Simulator app to normal "/Applications" directory.
ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app" "/Applications/iOS Simulator.app"

# Disable Time Machine prompt for every disk.
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Configure Activity Monitor to always open a window, sorted by the most CPU intensive tasks.
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
defaults write com.apple.ActivityMonitor ShowCategory -int 0
defaults write com.apple.ActivityMonitor SortColumn -string "cpUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0
