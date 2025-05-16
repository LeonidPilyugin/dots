function mp3repack () {
    for file in $@; do
        echo $file
        mv $1 .temp.mp3 && ffmpeg -i .temp.mp3 -b:a 192k $1 &> /dev/null
        rm .temp.mp3
    done
}

function chvol () {
    ffmpeg -i "$1" -b:a 192k -filter_complex "volume=$2" .temp.mp3
    mv .temp.mp3 "$1"
}

function allffmpeg () {
    for song in *; do
        ffmpeg -i "$song" $@ .temp.mp3
        mv .temp.mp3 $song
    done
}

alias adjvol='allffmpeg -filter_complex "loudnorm,volume=5dB"'

function dlay () {
    yt-dlp -o "$1" --no-playlist -f "bestaudio" --audio-format wav "$2"
}
