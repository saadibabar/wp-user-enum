#change the url and user ids as per your requirements.
or i in {1..20}; do curl -s -L -i http://www.desired-wordpress-website.com/?author=$i | grep -E -o "\" title=\"View all posts by [a-z0-9A-Z\-\.]*|Location:.*" | sed 's/\// /g' | cut -f 6 -d ' ' | grep -v "^$"; done
