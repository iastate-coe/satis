#!/bin/sh

php bin/satis build satis.json build

if [ -d "/var/www/myfiles/html.engineering.iastate.edu/www/composer/" ]; then
    rsync -rtq --delete /usr/people/engrweb/satis-composer/build/ /var/www/myfiles/html.engineering.iastate.edu/www/composer/
fi
