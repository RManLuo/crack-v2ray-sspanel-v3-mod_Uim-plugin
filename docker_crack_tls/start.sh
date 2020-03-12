nohup /usr/bin/v2ray/v2ray -config /etc/v2ray/config.json > /dev/null 2>&1 &
/usr/local/bin/caddy -log stdout -agree=true -conf=/etc/caddy/Caddyfile -root=/var/tmp