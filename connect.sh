device=$(iw dev | grep "wlan")
num=${device: -1}

iwctl station "wlan$num" scan
iwctl station "wlan$num" get-networks
iwctl station "wlan$num" connect RIMEL