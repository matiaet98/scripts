<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.bird.restart</string>
    <key>Program</key>
    <string>/Library/Scripts/restartbird.sh</string>
    <key>StandardOutPath</key>
    <string>/tmp/com.bird.restart.stdout</string>
    <key>StandardErrorPath</key>
    <string>/tmp/com.bird.restart.stderr</string>
    <key>StartCalendarInterval</key>
    <dict>
        <key>Minute</key>
        <integer>0</integer>
    </dict>
</dict>
</plist>

☁  ~  cat Library/Scripts/restartbird.sh
#!/bin/bash

BIRDPS=$(ps -A | grep 'bird' | grep -v grep | awk '{print $1}')
kill -9 ${BIRDPS}