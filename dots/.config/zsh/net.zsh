function ipa () {
    curl -s ifconfig.co/json | jq "del(.user_agent)"
}
