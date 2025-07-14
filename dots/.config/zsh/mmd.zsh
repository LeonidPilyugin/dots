function dlay () {
    yt-dlp -o "$1" --no-playlist -f "bestaudio" --audio-format wav "$2"
    echo "$1" | reencode
}

function reencode () {
    while read -r file; do
        ext="${file##*.}"
        echo "$file -> $file.$ext"
        yes | ffmpeg -y -v 0 -i "$file" "$file.$ext"
        mv "$file.$ext" "$file"
    done
}
