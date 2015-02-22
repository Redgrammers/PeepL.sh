echo "Requiring Administrator Password for '$HOME/PeepL.sh/functions/setup.sh'"
sudo -p "Administrator Password: " functions/setup.sh
if [ "$?" = "1" ]; then exit 1; fi
if ! [ -d /usr/local ]; then sudo mkdir /usr/local; chmod -R 777 /usr/local; fi
cd /usr/local
rm -r README.md*
which -s sha256sum
if [ "$?" = "0" ]; then
	echo "echo $1 | sha256sum" >> compat/shasum
else
	echo "echo $1 | shasum -a 256" >> compat/shasum
fi
