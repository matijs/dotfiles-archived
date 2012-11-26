#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Menu bar: disable transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable Resume system-wide
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# Disable automatic termination of inactive apps
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Use column view in all Finder windows by default
# Four-letter codes for all view modes: `icnv`, `Nlsv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

###############################################################################
# Dock & hot corners                                                          #
###############################################################################

# Autohide the Dock
defaults write com.apple.dock autohide -bool true

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 32

# Set the icon size of magnified items to 72 pixels
defaults write com.apple.dock largesize -int 64

# Magnify Dock icons on hover
defaults write com.apple.dock magnification -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Enable the 2D Dock
defaults write com.apple.dock no-glass -bool true

# Bottom left screen corner → Start screen saver
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# No persistent apps
defaults write com.apple.dock persistent-apps -array

echo "Done. Now go restart to make sure everything works."
