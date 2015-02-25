mv ./* /usr/local
rm -f /.users.db
touch /.users.db
chmod 700 /.users.db
source ../cleanup.sh
