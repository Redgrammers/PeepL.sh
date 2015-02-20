setup () {
	mv ./* /usr/local
	touch /.users.db
	chmod 755 /.users.db
}
sudo -p "System Administrator Password: " setup
