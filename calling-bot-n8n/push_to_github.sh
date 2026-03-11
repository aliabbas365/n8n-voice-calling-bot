#!/usr/bin/env bash
set -e

if [ -z "$1" ]; then
  echo "Usage: ./push_to_github.sh https://github.com/YOUR_USERNAME/calling-bot-n8n.git"
  exit 1
fi

git init
git add .
git commit -m "Initial commit - sanitized n8n calling bot workflow"
git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin "$1"
git push -u origin main
