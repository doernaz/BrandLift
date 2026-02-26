#!/bin/bash
# 1. Add all changes
git add .

# 2. Commit with a timestamp (so you don't have to think of a message)
msg="Syncing fix: $(date +'%Y-%m-%d %H:%M:%S')"
git commit -m "$msg"

# 3. Push to GitHub (This triggers the GitHub Action to the VPS)
git push origin main

echo "------------------------------------------"
echo "✅ Changes pushed to GitHub!"
echo "🚀 VPS deployment triggered via Actions."
echo "------------------------------------------"
