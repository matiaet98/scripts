# HOWTO

1 - Create sh on ~/Library/Scripts

```bash
touch ~/Library/Scripts/resetjetbrains.sh
# edit it
```

2 - Create plist file: *Library/LaunchAgents/reset.jetbrains.plist*

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.jetbrains.reset</string>
    <key>Program</key>
    <string>/Library/Scripts/resetjetbrains.sh</string>
    <key>StandardOutPath</key>
    <string>/tmp/com.jetbrains.reset.stdout</string>
    <key>StandardErrorPath</key>
    <string>/tmp/com.jetbrains.reset.stderr</string>
    <key>StartCalendarInterval</key>
    <dict>
        <key>Hour</key>
        <integer>0</integer>
        <key>Minute</key>
        <integer>0</integer>
    </dict>
</dict>
</plist>
```

3 - Validate plist file like this (optional)

```bash
plutil ~/Library/LaunchAgents/reset.jetbrains.plist
```

4 - Load the new plist in the launcher and enable

```bash
launchctl load ~/Library/LaunchAgents/reset.jetbrains.plist
launchctl enable com.jetbrains.reset
```

5 - If you need to make changes to the plist, then:

```bash
launchctl unload ~/Library/LaunchAgents/reset.jetbrains.plist
#modify and
launchctl load ~/Library/LaunchAgents/reset.jetbrains.plist
```

