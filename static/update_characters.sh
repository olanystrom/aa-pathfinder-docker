#!/bin/bash
echo $1
function replace_setting() {
    rm -f /tmp/pf.ini
    sed -E "s/$1/$2/g" $3 > /tmp/pf.ini
    cat /tmp/pf.ini > /var/www/html/pathfinder/app/pathfinder.ini
}
echo "Replacing settings!"
replace_setting "CHARACTER\s*=\s*.*" "CHARACTER                     =   $1" "/var/www/html/pathfinder/app/pathfinder.ini"
echo "Complete!"