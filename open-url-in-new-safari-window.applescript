#!/usr/bin/osascript

# https://github.com/codejake/raycast-scripts/

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open URL in new Safari window
# @raycast.mode silent
# @raycast.packageName Safari
#
# Optional parameters:
# @raycast.icon 🦁
# @raycast.argument1 { "type": "text", "placeholder": "URL" }

# Documentation:
# @raycast.description This script opens the specified URL in a new Safari window.
# @raycast.author Jake Shaw
# @raycast.authorURL https://github.com/codejake

use scripting additions

on run argv
    if (count of argv) > 0 then
        set myURL to item 1 of argv
        if myURL is not "" then
            tell application "Safari"
                activate
                tell front window
                    set current tab to (make new tab with properties {URL:myURL})
                end tell
            end tell
        else
            return
        end if
    else
        display dialog "No URL provided."
    end if
end run
