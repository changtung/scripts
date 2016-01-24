#cache - download a webpage to disc, cache it in gzip and add to website
#header footer file should be present also git in filesystem and wget
#usage cache.sh WEBSITE_URL TITLE
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
mkdir cache/$NEW_UUID
cd cache
wget -P $NEW_UUID -p -k $1
tar -cvzf $NEW_UUID.tar.gz $NEW_UUID
cp $NEW_UUID.tar.gz ../stronaDomowa/strony/

link = '\r\n<li><a href="'$1'">'$2'</a><a href="strony/'$NEW_UUID.tar.gz'">cache</a>
<blockquote>'$3'
</blockquote>
</li>';

cd ..
echo $link >> links
cat header > linki.html
cat links >> linki.html
cat footer >> linki.html

cp linki.html -R stronaDomowa/

git init
git add .
git commit -m 'after adding '$2
