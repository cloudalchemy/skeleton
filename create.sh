#!/bin/bash

# To create a new role using this skeleton fill two variables and run this script. Remove this file after role creation.

# This variable ideally should contain the name of an application which will be deployed with ansible role.
# Do not use whitespaces.
APPLICATION=""

# Your name. Preferably your full name.
AUTHOR=""


mv "templates/application.service.j2" "templates/${APPLICATION}.service.j2"

find ./ -type f -exec sed -i "s/<<AUTHOR>>/$AUTHOR/g" {} \;
find ./ -type f -exec sed -i "s/<<APPLICATION>>/$APPLICATION/g" {} \;
