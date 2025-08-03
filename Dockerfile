FROM ghcr.io/goryn-clade/pathfinder:latest

COPY static/api_write.php /var/www/html/pathfinder/api_write.php
COPY static/update_characters.sh /var/www/html/pathfinder/app/update_characters.sh
RUN chmod +x /var/www/html/pathfinder/app/update_characters.sh

WORKDIR /var/www/html
