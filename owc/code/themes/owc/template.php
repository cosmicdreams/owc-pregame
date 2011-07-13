<?php
/**
 * @file template.php
 * Overrides and other theme related function for the LPS base theme.
 */




/**
 * Implements hook_theme().
 */
function owc_theme() {
  return array(
    // The form ID.
    'search_block_form' => array(
      // Forms always take the form argument.
      'render element' => 'form',
    ),
  );
}

/**
 * Search Block Form theme callback function
 * This theme function does a few things:
 *  - Removes the title element for the search block
 *  - Pre-populates the search block's textfield with the word 'Search'
 *  - Adds javascript to hide or show the word 'Search' on focus & blur
 *  - Adds/Removes the 'active' class so text can be greyed out when not active, or a more readable color when active.
 */
  function theme_owc_search_block_form($vars) {
    $form = $vars['form'];
    unset($form['search_block_form']['#title']);
    unset($form['submit']['#value']);
    $form['search_block_form']['#value'] = 'Search';
    $form['search_block_form']['#attributes'] = array(
      'onblur' => "if (this.value == '') {this.value = 'Search'; jQuery(this).removeClass('active');}",
      'onfocus' => "if (this.value == 'Search') {this.value = ''; jQuery(this).addClass('active');}"
    );
    $output .= drupal_render($form);
    return $output;
}
