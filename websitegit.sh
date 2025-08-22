#!/bin/sh
# Auto-commit with timestamp and push

# Move into the script’s directory (so you can run it from anywhere)
cd "$(dirname "$0")" || exit 1

# Stage all changes
git add -A

# Commit with timestamp (YYYY-MM-DD HH:MM)
git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S')"

# Push to the current branch (usually 'main' or 'master')
BRANCH=$(git rev-parse --abbrev-ref HEAD)
git push origin "$BRANCH"
