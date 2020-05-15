# Status.sh

Is used to get status code of list of urls present inside the given file

**Usage** 
- Create a list of url's
- done < test/test.txt

# Wayback

Is used to grep all the `js` files from wayback and check their status code.

**Usage**
- https://github.com/tomnomnom/waybackurls
- `waybackurls https://hackerone.com | grep '\.js$' | while read LINE; do curl -o /dev/null --silent --head --write-out "%{http_code} $LINE\n" "$LINE";done | grep "status-code"
`
