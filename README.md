# scripts
Some Linux scripts

cache.sh - download specific url, creates cache of it and tar.gz it. Then add to a file linki.html a header, footer and the list of links, so it creates a webpage with links to that url and with cached version. 
usage: cache.sh URL TOPIC DESCRIPION

You can modidy files header, footer from cachce directory to your own website. 
folder stronaDomowa contains webpage, which will be updated after each script call. 
It also add new version to git. 

publish.sh - publishes webpage through ftp. 
Look at the script, where you can insert your ftp info. 
