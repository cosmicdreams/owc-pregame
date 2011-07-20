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

function _owc_configure_extra() {
	// Any themes without keys here will get numeric keys and so will be enabled,
	// but not placed into variables.
	$enable = array(
	  'theme_default' => 'owc',
	  'admin_theme' => 'seven',
	  //'zen'
	);
	theme_enable($enable);
	 
	foreach ($enable as $var => $theme) {
	  if (!is_numeric($var)) {
	    variable_set($var, $theme);
	  }
	}
	 
	// Disable the default Bartik theme
	theme_disable(array('bartik'));
}