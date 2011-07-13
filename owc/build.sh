#!/bin/bash

# Database info
# -------------------------------
DBUSER=user
DBPASS=pass
DBNAME=OWC
# Path/to/drush (script assumes drush is installed in your home directory somewhere)
DRUSHPATH=drupal_dev_tools/drush
# Project Name (this will be the directory name created in your public_html directory)
PROJECT=owc
# directory in your home directory that has the distro.make drush make file.
PROJECTPATH=owc
# Drupal Install Profile machine name to use:
PROFILE=owc

# Default sitename
SITENAME="Overnight Web Challenge"

# -------------------------------
# DO NOT EDIT BELOW THIS LINE!
# -------------------------------
# Grab current username from the unix environment
UNAME=`whoami`
# Apache mod Rewrite pattern for RewriteBase
RWPATH="RewriteBase\ \/\~"$UNAME"\/"$PROJECT



usage()
{
clear
cat << EOF
usage: $0 options

This script will delete the installation, re-run a distro drush make file, install using the specified install profile, set up file permissions and update the rewrite base in the .htaccess file for you.

OPTIONS:
   -h      Show this message

DATABASE SETTINGS
   -n      Database Username
   -p      Database Password
   -d      Database Name
   
DRUSH
   -s      Path to drush install.  The script assumes this is somewhere within your home directory.
           For example, if installed in ~/drush, this would be set as such: -s drush

PROJECT SPECIFIC OPTIONS
   -w     Project Name (This will be the directory within your public_html directory)
   -m     Project Path (Directory within your home directory where the distro.make drush makefile exists)
   -p     Machine name of the install profile with which to install Drupal.
EOF
}

while getopts "hn:p:d:s:w:m:i" OPTION
do
  case $OPTION in
    h)
	  usage
	  exit 1
	  ;;
	n)
	  DBUSER=$OPTARG
	  ;;
	p)
	  DBPASS=$OPTARG
	  ;;
	d)
	  DBNAME=$OPTARG
	  ;;
	s)
	  DRUSHPATH=$OPTARG
	  ;;
	w)
	  PROJECT=$OPTARG
	  ;;
	m)
	  PROJECTPATH=$OPTARG
	  ;;
	i)
	  PROFILE=$OPTARG
	  ;;
	?)
	  usage
	  exit
	  ;;
  esac
done
	  

clear
echo -e '===[\E[37;44m\033[1m Removing Existing Codebase \033[0m]==='
cd /home/$UNAME/public_html
chperms /home/$UNAME/public_html/$PROJECT/sites > /dev/null 2>&1
chmod 700 -R /home/$UNAME/public_html/$PROJECT/sites > /dev/null 2>&1

rm -rf $PROJECT > /dev/null 2>&1

# End script if the directory wasn't deleted.
if [ -d $PROJECT ]; then
  echo -e "\e[0;31m[ERROR]\e[1;37m Could not remove Project directory /home/$UNAME/public_html/$PROJECT.\e[0m"
  exit
fi

cd /home/$UNAME/$PROJECTPATH
echo ''
echo -e '===[\E[37;44m\033[1m Processing Distro Makefile \033[0m]==='
/home/$UNAME/$DRUSHPATH/drush make distro.make /home/$UNAME/public_html/$PROJECT --working-copy --prepare-install
cd /home/$UNAME/public_html/$PROJECT
echo ''
echo -e '===[\E[37;44m\033[1m Running Site Install Profile \033[0m]==='
/home/$UNAME/$DRUSHPATH/drush si $PROFILE --db-url=mysql://$DBUSER:$DBPASS@localhost/$DBNAME --account-name=admin --account-pass=nerdery --site-name="$SITENAME" --site-mail=$UNAME@nerdery.com -y -v
echo ''
echo -e '===[\E[37;44m\033[1m Updating .htaccess file \033[0m]==='
sed -i -e "s/\# RewriteBase \/$/$RWPATH/g" .htaccess
echo ''
echo -e '===[\E[37;44m\033[1m Updating filesystem permissions \033[0m]==='
chmod 755 sites/default
chmod 777 -R sites/default/files
cd /home/$UNAME
