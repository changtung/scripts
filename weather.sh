#!/bin/sh

URL='http://www.accuweather.com/en/pl/pozna/276594/weather-forecast/276594'

wget -q -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print $2": "$16", "$12"°" }'| head -1
