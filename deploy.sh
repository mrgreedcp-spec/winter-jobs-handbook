#!/bin/sh
# 重建手册并推送到 GitHub Pages
set -e
cd "$(dirname "$0")"
python3 ../_手册源/build.py
sed 's|<meta charset="utf-8">|<meta charset="utf-8">\n<meta name="robots" content="noindex, nofollow">|' ../_手册源/out/local.html > index.html
git add -A && git commit -m "Update handbook" && git push
