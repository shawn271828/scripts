tagfile="files.gtags"
find . \( -path ./.git -o -path ./arch -o -path ./tools \) -prune -o -type f -print > $tagfile
find arch/arm64 -type f >> $tagfile
gtags -f $tagfile
