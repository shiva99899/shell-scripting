#!/bin/bash
# creating user with shell scripting
# script should be execute with sudo or root access
if [[ "${UID}" -ne 0 ]]
then
	echo "please run with sudo or root user"
	exit 1
fi

# user should provide atleast one argument as USER_NAME else guid him
if [[ "${#}" -lt 1 ]]
then
	echo "usage: ${0} USER_NAME [COMMENT]...."
	echo "create a user with name USER_NAME and comments fields of COMMENT"
	exit 1
fi

# store 1st argument as user name
USER_NAME="$1"

# in case of more than one argument, store it as account comments
#shift
COMMENT="$@"

# create a password
PASSWORD=$(date +%s%N)
echo "$PASSWORD"

# create the user
useradd -c "${COMMENT}" -m $USER_NAME

# check if user is successfully created or not
if [[ $? -ne 0 ]]
then
	echo "the user is not created"
	exit 1
fi

# set the password for the user
echo $PASSWORD | passwd --stdin $USER_NAME

# check if password is successfully set or not
if [[ $? -ne 0 ]]
then
	echo "password not generated"
	exit 1
fi

# force password change on first login
passwd -e $USER_NAME

# display the username, password and the hostname wehre the user was created.
echo
echo "username: $USER_NAME"
echo
echo "password: $PASSWORD"
echo
echo "Hostname: $(hostname)"
