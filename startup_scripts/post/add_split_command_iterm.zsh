#!/bin/zsh

hsplit() {
  currentDir=`pwd`
  osascript &>/dev/null <<EOF
    tell application "iTerm"
      tell current session of current window to set newSplit to split horizontally with same profile
      tell newSplit
      select
        write text "cd $currentDir"
      end tell
    end tell
EOF
}

vsplit() {
  currentDir=`pwd`
  osascript &>/dev/null <<EOF
    tell application "iTerm"
      tell current session of current window to set newSplit to split vertically with same profile
      tell newSplit
      select
        write text "cd $currentDir"
      end tell
    end tell
EOF
}
