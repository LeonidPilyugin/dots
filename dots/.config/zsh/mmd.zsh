function dlay () {
    yt-dlp -o "$1" --no-playlist -f "bestaudio" --audio-format wav "$2"
}
