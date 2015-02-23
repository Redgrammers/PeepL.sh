echo "Requiring Administrator Password for '$PWD/functions/setup.sh'"
if ! [ -d /usr/local ]; then sudo mkdir /usr/local; chmod -R 777 /usr/local; fi
sudo -p "Administrator Password: " functions/setup.sh || echo "An error occured." && source setup.sh
cd /usr/local
rm -r README.md*
which -s sha256sum
if [ "$?" = "0" ]; then
	echo "echo -n $1 | sha256sum" >> compat/shasum
else
	echo "echo -n $1 | shasum -a 256" >> compat/shasum
fi
