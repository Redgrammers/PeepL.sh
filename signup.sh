read -p "Username: " usr
read -sp "Password: " pass
read -sp "Confirm Password: " cpass

if ! [ "$cpass" = "$pass" ]; then
	echo "Passwords do not match. Please try again."
	source ../login.sh
fi
