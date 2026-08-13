#!/bin/bash

# Configuration
INTERVAL=600 # 10 minutes in seconds
BRANCH="main" # Change this if your default branch is different (e.g., master)

echo "🚀 Auto-push script started. Checking for changes every 10 minutes..."

# This loop runs indefinitely until you kill the terminal or close VS Code
while true; do
    # Check if there are any changes (tracked or untracked)
    if [ -n "$(git status --porcelain)" ]; then
        echo "📝 Changes detected at $(date '+%Y-%m-%d %H:%M:%S'). Preparing push..."
        
        # Stage all changes
        git add .
        
        # Commit with a timestamped message
        git commit -m "Auto-commit: $(date '+%Y-%m-%d %H:%M:%S')"
        
        # Push to GitHub
        git push origin $BRANCH
        
        echo "✅ Push successful! Next check in 10 minutes."
    else
        echo "💤 No changes detected at $(date '+%Y-%m-%d %H:%M:%S'). Skipping push."
    fi

    # Wait for 10 minutes before looping again
    sleep $INTERVAL
done
