#!/usr/bin/env sh


# removes the download sqlite3 database
# FUCK OFF TIM, YOU AIN'T GETTING MY DOWNLOADS INFO
sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'

sudo defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
sudo defaults write -g QLPanelAnimationDuration -float 0
sudo defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
sudo defaults write com.apple.finder DisableAllAnimations -bool true
sudo defaults write com.apple.dock launchanim -bool false
sudo defaults write com.apple.dock expose-animation-duration -float 0.1
sudo defaults write com.apple.Dock autohide-delay -float 0
sudo defaults write NSGlobalDomain KeyRepeat -int 0
sudo defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
sudo launchctl remove com.apple.CallHistoryPluginHelper
sudo launchctl remove com.apple.AddressBook.abd
sudo launchctl remove com.apple.ap.adprivacyd
sudo launchctl remove com.apple.ReportPanic
sudo launchctl remove com.apple.ReportCrash
sudo launchctl remove com.apple.ReportCrash.Self
sudo launchctl remove com.apple.DiagnosticReportCleanup
sudo launchctl remove com.apple.siriknowledged
sudo launchctl remove com.apple.helpd
sudo launchctl remove com.apple.mobiledeviceupdater
sudo launchctl remove com.apple.screensharing.MessagesAgent
sudo launchctl remove com.apple.TrustEvaluationAgent
sudo launchctl remove com.apple.spindump
sudo launchctl remove com.apple.metadata.mds.spindump
sudo launchctl remove com.apple.ftp-proxy
sudo launchctl remove com.apple.assistantd
sudo launchctl remove com.apple.identityservicesd
sudo launchctl remove com.apple.softwareupdate
sudo sysctl debug.lowpri_throttle_enabled=0
sudo networksetup -setv6off Wi-Fi
sudo networksetup -setv6off Ethernet
