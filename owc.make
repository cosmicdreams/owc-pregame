; Modules
; this make file tells drush to download the modules listed below
; --------

api = 2
core = 7.x

projects[addressfield][subdir] = contrib
projects[addressfield][type] = module
projects[addressfield][version] = 1.x-dev

projects[advanced_help][subdir] = contrib
projects[advanced_help][type] = module
projects[advanced_help][version] = 1.x-dev

projects[bean][subdir] = contrib
projects[bean][type] = module
projects[bean][version] = 1.x-dev

projects[conditional_fields][subdir] = contrib
projects[conditional_fields][type] = module
projects[conditional_fields][version] = 3.x-dev
; Patch to integrate conditional fields with features (for nodes only)
;projects[conditional_fields][patch][] = http://drupal.org/files/issues/conditional_fields_features_integration-1191248-p0_format-1.patch

projects[commerce][subdir] = contrib
projects[commerce][type] = module
projects[commerce][version] = 1.x-dev

projects[commerce_stock][subdir] = contrib
projects[commerce_stock][type] = module
projects[commerce_stock][version] = 1.x-dev

projects[commerce_feeds][subdir] = contrib
projects[commerce_feeds][type] = module
projects[commerce_feeds][version] = 1.x-dev

projects[context_admin][subdir] = contrib
projects[context_admin][type] = module
projects[context_admin][version] = 1.x-dev

projects[ctools][subdir] = contrib
projects[ctools][type] = module
projects[ctools][version] = 1.x-dev

projects[date][subdir] = contrib
projects[date][type] = module
projects[date][version] = 2.x-dev

projects[entity][subdir] = contrib
projects[entity][type] = module
projects[entity][version] = 1.x-dev

projects[email][subdir] = contrib
projects[email][type] = module
projects[email][version] = 1.x-dev

projects[features][subdir] = contrib
projects[features][type] = module
projects[features][version] = 1.x-dev

projects[feeds][subdir] = contrib
projects[feeds][type] = module
projects[feeds][version] = 2.x-dev

projects[feeds_tamper][subdir] = contrib
projects[feeds_tamper][type] = module
projects[feeds_tamper][version] = 1.x-dev

projects[field_group][subdir] = contrib
projects[field_group][type] = module
projects[field_group][version] = 1.x-dev

projects[google_analytics][subdir] = contrib
projects[google_analytics][type] = module
projects[google_analytics][version] = 1.x-dev

projects[gmap][subdir] = contrib
projects[gmap][type] = module
projects[gmap][version] = 1.x-dev

projects[imagecrop][subdir] = contrib
projects[imagecrop][type] = module
projects[imagecrop][version] = 1.x-dev

projects[job_scheduler][subdir] = contrib
projects[job_scheduler][type] = module
projects[job_scheduler][version] = 2.0-alpha2

projects[libraries][subdir] = contrib
projects[libraries][type] = module
projects[libraries][version] = 1.0

projects[link][subdir] = contrib
projects[link][type] = module
projects[link][version] = 1.x-dev

projects[location][subdir] = contrib
projects[location][type] = module
projects[location][version] = 3.x-dev

projects[maestro][subdir] = contrib
projects[maestro][type] = module
projects[maestro][version] = 1.x-dev

projects[menu_block][subdir] = contrib
projects[menu_block][type] = module
projects[menu_block][version] = 2.x-dev

projects[navigation404][subdir] = contrib
projects[navigation404][type] = module
projects[navigation404][version] = 1.x-dev

projects[panels][subdir] = contrib
projects[panels][type] = module
projects[panels][version] = 3.x-dev

projects[panels_extras][subdir] = contrib
projects[panels_extras][type] = module
projects[panels_extras][version] = 1.x-dev

projects[pathauto][subdir] = contrib
projects[pathauto][type] = module
projects[pathauto][version] = 1.x-dev

projects[references][subdir] = contrib
projects[references][type] = module
projects[references][version] = 2.x-dev

projects[rules][subdir] = contrib
projects[rules][type] = module
projects[rules][version] = 2.x-dev

projects[search_config][subdir] = contrib
projects[search_config][type] = module
projects[search_config][version] = 1.x-dev

projects[seo_checklist][subdir] = contrib
projects[seo_checklist][type] = module
projects[seo_checklist][version] = 3.x-dev

projects[strongarm][subdir] = contrib
projects[strongarm][type] = module
projects[strongarm][version] = 2.0-beta2

projects[token][subdir] = contrib
projects[token][type] = module
projects[token][version] = 1.x-dev

projects[views][subdir] = contrib
projects[views][type] = module
projects[views][version] = 3.x-dev
; Uncomment if views_form will be used.
; projects[views][patch][] = http://drupal.org/files/issues/form_id_with_args-769322-26-p0.patch

projects[views_bulk_operations][subdir] = contrib
projects[views_bulk_operations][type] = module
projects[views_bulk_operations][version] = 3.x-dev

projects[wysiwyg][subdir] = contrib
projects[wysiwyg][type] = module
projects[wysiwyg][version] = 2.x-dev


; Development (REMOVE FOR PRODUCTION!)
; -----------

projects[devel][subdir] = contrib
projects[devel][type] = module
projects[devel][version] = 1.x-dev

projects[examples][subdir] = contrib
projects[examples][type] = module
projects[examples][version] = 1.x-dev

projects[examples][subdir] = contrib
projects[examples][type] = module
projects[examples][version] = 1.x-dev