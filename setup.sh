setup () {
	mv ./* /usr/local
	touch /.users.db
	chmod 755 /.users.db
	source cleanup.sh
}
sudo -p "Administrator Password: " setup
if [ "$?" = "1" ]; then exit 1; fi
cd /usr/local
which -s sha256sum
if [ "$?" = "0" ]; then
	echo "echo $1 | sha256sum" >> compat/shasum.sh
else
	echo "echo $1 | shasum -a 256" >> compat/shasum.sh
fi
