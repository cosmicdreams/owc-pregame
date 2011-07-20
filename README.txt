Explanation of files & directory structure:

FILES
---------------------
distro.make                                       :: drush makefile defining the owc website.
code/owc_install_profile/lifetouch.make           :: .make file for install profile. Defines what modules/themes/features will downloaded, any applicable patches, and where/how drush should retrieve them.
code/owc_install_profile/lifetouch.info           :: .info file for install profile. Defines what modules/themes/features will be enabled by default.
code/owc_install_profile/lifetouch.install        :: .install file for install profile.
code/owc_install_profile/lifetouch.profile        :: .profile file for install profile.


DIRECTORIES
---------------------
code/                                             :: All custom code, themes, and install profile(s) live within this directory
code/themes                                       :: Themes that will be installed in the sites/all/themes directory (must be included in the distro.make file)
code/owc_install_profile                          :: Install profile for lifetouch portrait studios sites.
code/owc_install_profile/modules/custom           :: Modules here will be installed in the profiles/lifetouch/modules/custom directory.

code/owc_install_profile/modules/custom/lps_custom    :: Any custom modules developed specifically for this install profile that are NOT contributed back to drupal.org
code/owc_install_profile/modules/custom/lps_features  :: All the features developed for this install profile



Note:
When processing the distro.make file, after retrieving the install profile, drush will process the owc.make file automatically.
Contrib Modules obtained from Drupal.org with the owc.make file will wind up in the profiles/owc/modules/contrib directory.
