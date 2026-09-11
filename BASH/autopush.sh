#!/bin/bash

# Configuration
INTERVAL=100 # Check for changes every 100 seconds (adjust as needed)
BRANCH="main" # Change this if your default branch is different (e.g., master)

echo "🚀 Auto-push script started. Checking for changes every 100 seconds..."

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
        
        echo "✅ Push successful! Next check in 100 seconds."
    else
        echo "💤 No changes detected at $(date '+%Y-%m-%d %H:%M:%S'). Skipping push."
    fi

    # Wait for 100 seconds before looping again
    sleep $INTERVAL
done
