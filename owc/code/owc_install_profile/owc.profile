<?php

/**
 * Implements hook_form_<form_id>_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function owc_form_install_configure_form_alter(&$form, $form_state) {
  // Set default country.
  $form['server_settings']['site_default_country']['#default_value'] = 'US';
}
