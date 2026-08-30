#!/usr/bin/env bash
# One-time setup for LN Reader Pro — run this if you want to preview the repo locally
# No dependencies, no build step. Just opens the main HTML file.

set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
MAIN="$HERE/projectread.html"

if [ ! -f "$MAIN" ]; then
  echo "ERROR: $MAIN not found. Run this script from the repo root." >&2
  exit 1
fi

echo "Opening $MAIN in your default browser..."
case "$(uname -s)" in
  Darwin)  open "$MAIN" ;;
  MINGW*|MSYS*|CYGWIN*) start "" "$MAIN" ;;
  Linux)   xdg-open "$MAIN" ;;
  *)       echo "Open $MAIN manually in your browser." ;;
esac
