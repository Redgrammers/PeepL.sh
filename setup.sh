sudo -p "Administrator Password: " sudo/setup.sh
if [ "$?" = "1" ]; then exit 1; fi
cd /usr/local
which -s sha256sum
if [ "$?" = "0" ]; then
	echo "echo $1 | sha256sum" >> compat/shasum
else
	echo "echo $1 | shasum -a 256" >> compat/shasum
fi
