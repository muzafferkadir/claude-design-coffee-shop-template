#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../.."
message="${1:?Commit mesajı gerekli}"
printf '\n- %s: %s\n' "$(date +%F)" "$message" >> history.md
git add -A
git commit -m "$message"
git push -u origin main
