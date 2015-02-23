read -p "Username: " usr
read -sp "Password: " pass
echo
read -sp "Confirm Password: " cpass
echo

if ! [ "$cpass" = "$pass" ]; then
	echo "Passwords do not match. Please try again."
	source ./signup.sh
fi

hpass = $(compat/shasum "$pass")
echo "$usr.$hpass" >> /.users.db
