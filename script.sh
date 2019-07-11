#!/bin/bash

otp=$(node index.js)

osascript <<EOD
  tell application "Tunnelblick"
    disconnect "nutrien-digital-silver"
    connect "nutrien-digital-silver"
  end tell
  tell application "System Events"
    delay 1
    keystroke "<your_password_here>"
    keystroke $otp
    keystroke return
  end tell
EOD
