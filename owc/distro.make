; Use this file to build a full distro including Drupal core (with patches) and
; the Lifetouch install profile using the following command:
;
;     $ drush make distro.make www --working-copy

api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = 7


; Specifying themes to retrieve, and place into the sites/all/themes directory

; Add base theme to the full Drupal distro build (sites/all/themes)
projects[owc1][type] = theme
projects[owc1][download][type] = svn
projects[owc1][download][url] = https://svn.sierrabravo.net/LIFETOUCHPS.Websites/trunk/code/themes/lps
projects[owc1][destination] = themes

; Specifying install profile to retrieve.

; Add Install Profile to the full Drupal distro build
projects[owc][type] = profile
projects[owc][download][type] = git
projects[owc][download][url] = git@github.com:cosmicdreams/owc-pregame.git


; Any additional modules/libraries that must live within sites/all should be added here.

; Modules
; -------



; Libraries
; ---------

libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.1/ckeditor_3.6.1.zip
libraries[ckeditor][destination] = libraries
