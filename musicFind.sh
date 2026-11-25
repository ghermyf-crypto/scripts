#!/bin/bash
find /home -type f \( -iname "*.mp3" -o -iname "*.mp4" -o -iname "*.wav" -o -iname "*.avi" -o -iname "*.mkv" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.ogg" \) 2>/dev/null
