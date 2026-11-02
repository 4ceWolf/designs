#!/usr/bin/env bash
# Design Gallery — serves ~/Projects so the gallery can preview every design,
# the UI Studio editor, and the Echo design files with correct relative paths.
set -e
PORT="${1:-5180}"
cd "$(dirname "$0")/.."        # ~/Projects
echo "Design Gallery → http://localhost:${PORT}/designs/"
exec python3 -m http.server "$PORT"
