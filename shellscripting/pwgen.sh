#!/bin/bash
PWD_OK="false"
while [ "$PWD_OK" != "true" ] ; do
	read -sp "Enter a password: " # -s silence -p prompt user input
	echo ""
	PWD_LEN=$(echo -n "$REPLY" | wc -m) # -nsuppresses new line
	PASSWORD=$(openssl passwd -6 "$REPLY")
	if [ "$PWD_LEN" -gt 6 ]; then
		PWD_OK="true"
		echo $PASSWORD
	fi
done
