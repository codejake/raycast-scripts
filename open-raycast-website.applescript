#!/usr/bin/osascript

# https://github.com/codejake/raycast-scripts/

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open raycast.com in new Safari window
# @raycast.mode silent
# @raycast.packageName Safari
#
# Optional parameters:
# @raycast.icon 🤩

# Documentation:
# @raycast.description This script opens raycast.com in a new Safari window.
# @raycast.author Jake Shaw
# @raycast.authorURL https://github.com/codejake

use scripting additions

tell application "Safari"
    activate
    set myURL to "https://raycast.com"
    tell front window
        set current tab to (make new tab with properties {URL:myURL})
    end tell
end tell
