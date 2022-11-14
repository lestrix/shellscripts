#!/bin/bash
PWD_OK="false"
while [ "$PWD_OK" != "true" ] ; do
	if [[ $# -ne 1 ]] ; then
		read -sp "Enter a password: " # -s silence -p prompt user input
		echo ""
	else
		REPLY="$1"
	fi
	PWD_LEN=$(echo -n "$REPLY" | wc -m) # -nsuppresses new line
	PASSWORD=$(openssl passwd -6 "$REPLY")
	if [ "$PWD_LEN" -gt 6 ]; then
		PWD_OK="true"
		echo $PASSWORD
	else
		echo "Password too short must be more than 6 characters"
		exit 2
	fi
done
