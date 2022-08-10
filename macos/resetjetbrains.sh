#!/usr/bin/env bash

# WARNING: This script should be only used when you just want to have some more time to evaluate
# these awsome JetBrain products. It is always advised to buy these products if you find them
# useful in your daily works.

for product in IntelliJIdea WebStorm DataGrip PhpStorm CLion PyCharm GoLand RubyMine Rider; do
  echo "Closing $product"
  ps aux | grep -i MacOs/$product | cut -d " " -f 5 | xargs kill -9

  echo "Resetting trial period for $product"

  echo "removing evaluation key..."
  rm -rf ~/Library/Application\ Support/JetBrains/$product*/eval

  echo "removing all evlsprt properties in options.xml..."
  sed -i '' '/evlsprt/d' ~/Library/Application\ Support/JetBrains/$product*/options/other.xml

  echo
done

echo "removing additional plist files..."
rm -f ~/Library/Preferences/com.apple.java.util.prefs.plist
rm -f ~/Library/Preferences/com.jetbrains.*.plist
rm -f ~/Library/Preferences/jetbrains.*.*.plist

echo "restarting cfprefsd"
killall cfprefsd

echo
echo "That's it! Please consider buy these product if you find these useful."
