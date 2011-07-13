# OPTIONS:
#   -h      Show this message
#
# DATABASE SETTINGS
#   -n      Database Username
#   -p      Database Password
#   -d      Database Name
#   
# DRUSH
#   -s      Path to drush install.  The script assumes this is somewhere within your home directory.
#           For example, if installed in ~/drush, this would be set as such: -s drush
#
# PROJECT SPECIFIC OPTIONS
#   -w     Project Name (This will be the directory within your public_html directory)
#   -m     Project Path (Directory within your home directory where the distro.make drush makefile exists)
#   -p     Machine name of the install profile with which to install Drupal.
#

owc/build.sh -s drush -m owc -n user -p pass -d OWC_cweber