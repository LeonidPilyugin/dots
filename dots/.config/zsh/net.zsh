function ipa () {
    curl -s ifconfig.co/json | jq "del(.user_agent)"
}

function vpn () {
    sudo systemctl "$1" sing-box.service
}
