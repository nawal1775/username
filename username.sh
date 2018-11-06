#! /bin/bash
# username.sh
echo "To creat a username you must apply the following "
echo "The only characters that can be used are:
	- lower case letters,
	- digits,
	- and the underscore character.
It must start with a lower case letter.
It must contain at least three but no more than 12 characters."
echo "Type a username: "
read username
while echo $username | egrep -v "^[a-z]{1}[a-z0-9_]{2,11}$" > /dev/null 2>&1   
do
	echo "You must enter a valid username "
       	echo "type a username: "
        read username
done
echo "Thank you"

