#!/bin/env bash
[ -f /etc/telegram-notif.conf ] && source /etc/telegram-notif.conf 
[ -f ~/.config/telegram-notif.conf ] && source ~/.config/telegram-notif.conf 
curl -s -X POST -H 'Content-Type: application/json' -d '{"chat_id": '$tg_id', "text": "'"${@:-$(read a; echo $a)}"'"}' "https://api.telegram.org/bot$tg_token/sendMessage"
