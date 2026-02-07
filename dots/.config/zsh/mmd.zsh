function reencode () {
    if [ -n "$1" ]; then
        format="$1"
    fi
    while read -r file; do
        if [ -z "$format" ]; then
            ext="${file##*.}"
        else
            ext="$format"
        fi
        bsname=$(basename "$file" ".${file##*.}")
        echo "$file -> $bsname.$ext"
        yes | ffmpeg -y -v 0 -i "$file" "${bsname}-ffmpeg.$ext"
        mv "${bsname}-ffmpeg.$ext" "$bsname.$ext"
    done
}

alias yt="yt-dlp --js-runtimes node --remote-components ejs:npm --cookies-from-browser firefox"

function dlay () {
    yt -f bestaudio --no-playlist --extract-audio --audio-format wav -o "$1" "$2"
    echo "$1.wav" | reencode
}

alias dlas="yt -f bestaudio --no-playlist --extract-audio --audio-format wav --split-chapters"
