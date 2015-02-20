setup () {
	mv ./* /usr/local
	touch /.users.db
	chmod 755 /.users.db
	source cleanup.sh ""
}
sudo -p "Administrator Password: " setup
