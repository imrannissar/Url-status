waybackurls https://hackerone.com | grep '\.js$' | while read LINE; do curl -o /dev/null --silent --head --write-out "%{http_code} $LINE\n" "$LINE";done | grep "status-code"
