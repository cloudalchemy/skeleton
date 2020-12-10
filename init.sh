#!/bin/bash

# Port on which your application is listening
PORT="${1}"

# Your name. Preferably your full name.
AUTHOR="${2}"

# This variable ideally should contain the name of an application which will be deployed with ansible role.
# Do not use whitespaces.
APPLICATION="${3}"


if [ -z "${PORT}" ]; then
	echo "PORT is required"
	echo "Usage: "
	echo "  $0 PORT [AUTHOR] [APPLICATION]"
	exit 1
fi

# Try to figure out author name from repo name
if [ -z "${AUTHOR}" ]; then
	AUTHOR="$(git config user.name)"
	echo "Using author name: '$AUTHOR'"
fi

# Try to figure out application name from repo name
if [ -z "${APPLICATION}" ]; then
	APPLICATION="$(basename -s .git "$(git config --get remote.origin.url)")"
	echo "Using application name: '$APPLICATION'"
fi

rm README.md
mv ROLE_README.md README.md
mv "templates/application.service.j2" "templates/${APPLICATION}.service.j2"

find ./ -type f -exec sed -i "s/<<AUTHOR>>/$AUTHOR/g" {} \;
find ./ -type f -exec sed -i "s/<<APPLICATION>>/$APPLICATION/g" {} \;
find ./ -type f -exec sed -i "s/<<PORT>>/$PORT/g" {} \;

# Remove itself
rm -- "$0"
