<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Sun, 04 May 2014 12:41:32 GMT
 */

if (! defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (! nv_function_exists('nv_menu_theme_btnstool')) {
    function nv_menu_theme_btnstool_config($module, $data_block, $lang_block)
    {

        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6">' . $lang_block['facebook'] . '</div>';
        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6"><input type="text" name="config_facebook" class="form-control" value="' . $data_block['facebook'] . '"/></div>';


        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6">' . $lang_block['google_plus'] . '</div>';
        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6"><input type="text" name="config_google_plus" class="form-control" value="' . $data_block['google_plus'] . '"/></div>';


        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6">' . $lang_block['twitter'] . '</div>';
        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6"><input type="text" name="config_twitter" class="form-control" value="' . $data_block['twitter'] . '"/></div>';


        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6">' . $lang_block['youtube'] . '</div>';
        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6"><input type="text" name="config_youtube" class="form-control" value="' . $data_block['youtube'] . '"/></div>';


        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6">' . $lang_block['tel'] . '</div>';
        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6"><input type="text" name="config_tel" class="form-control" value="' . $data_block['tel'] . '"/></div>';


        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6">' . $lang_block['sms'] . '</div>';
        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6"><input type="text" name="config_sms" class="form-control" value="' . $data_block['sms'] . '"/></div>';


        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6">' . $lang_block['zalo'] . '</div>';
        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6"><input type="text" name="config_zalo" class="form-control" value="' . $data_block['zalo'] . '"/></div>';


        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6">' . $lang_block['zalos'] . '</div>';
        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6"><input type="text" name="config_zalos" class="form-control" value="' . $data_block['zalos'] . '"/></div>';


        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6">' . $lang_block['zaloc'] . '</div>';
        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6"><input type="text" name="config_zaloc" class="form-control" value="' . $data_block['zaloc'] . '"/></div>';

        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6">' . $lang_block['cart'] . '</div>';
        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6"><input type="text" name="config_cart" class="form-control" value="' . $data_block['cart'] . '"/></div>';

        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6">' . $lang_block['users'] . '</div>';
        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6"><input type="text" name="config_users" class="form-control" value="' . $data_block['users'] . '"/></div>';


        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6">' . $lang_block['maps'] . '</div>';
        $html .= '	<div class="col-xs-24 col-sm-6 col-md-6"><input type="text" name="config_maps" class="form-control" value="' . $data_block['maps'] . '"/></div>';

        return $html;
    }

    function nv_menu_theme_btnstool_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config']['facebook'] = $nv_Request->get_title('config_facebook', 'post');
        $return['config']['google_plus'] = $nv_Request->get_title('config_google_plus', 'post');
        $return['config']['twitter'] = $nv_Request->get_title('config_twitter', 'post');
        $return['config']['sms'] = $nv_Request->get_title('config_sms', 'post');
        $return['config']['zalo'] = $nv_Request->get_title('config_zalo', 'post');
        $return['config']['zalos'] = $nv_Request->get_title('config_zalos', 'post');
        $return['config']['zaloc'] = $nv_Request->get_title('config_zaloc', 'post');
        $return['config']['users'] = $nv_Request->get_title('config_users', 'post');
        $return['config']['cart'] = $nv_Request->get_title('config_cart', 'post');
        $return['config']['tel'] = $nv_Request->get_title('config_tel', 'post');
        $return['config']['youtube'] = $nv_Request->get_title('config_youtube', 'post');
        $return['config']['maps'] = $nv_Request->get_title('config_maps', 'post');
        return $return;
    }

    function nv_menu_theme_btnstool($block_config)
    {
        global $global_config, $site_mods, $lang_global, $module_file, $op;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.btns_tool.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.btns_tool.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        include NV_ROOTDIR . '/themes/' . $block_theme . '/language/' . NV_LANG_INTERFACE . '.php';

        $xtpl = new XTemplate('global.btns_tool.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL); 
        //$xtpl->assign('LANG', $lang_global);
       // $xtpl->assign('MLANG', $lang_module);
        $xtpl->assign('BLOCK_THEME', $block_theme);
        $xtpl->assign('DATA', $block_config);
        $xtpl->assign('SITE_NAME', $global_config['site_name']);
		$xtpl->assign('SITE_URL', $global_config['site_url']);  
		//$xtpl->assign('SELFURL', $client_info['selfurl']); 
	$xtpl->assign('THEME_PAGE_TITLE', nv_html_page_title(false));   
	 
        $numitems = 1;

        if (! empty($block_config['facebook'])) {
            $xtpl->parse('main.facebook');
            $numitems++;
        }
        if (! empty($block_config['google_plus'])) {
            $xtpl->parse('main.google_plus');
            $numitems++;
        }
        if (! empty($block_config['twitter'])) {
            $xtpl->parse('main.twitter');
            $numitems++;
        }
        if (! empty($block_config['maps'])) {
            $xtpl->parse('main.maps');
            $numitems++;
        }
        if (! empty($block_config['sms'])) {
            $xtpl->parse('main.sms');
            $numitems++;
        }
        if (! empty($block_config['zalo'])) {
            $xtpl->parse('main.zalo');
            $numitems++;
        }
        if (! empty($block_config['cart'])) {
            $xtpl->parse('main.cart');
            $numitems++;
        }
        if (! empty($block_config['users'])) {
            $xtpl->parse('main.users');
            $numitems++;
        }
        if (! empty($block_config['zalos'])) {
            $xtpl->parse('main.zalos');
            $numitems++;
        }
        if (! empty($block_config['zaloc'])) {
            $xtpl->parse('main.zaloc');
            $numitems++;
        }
        if (! empty($block_config['tel'])) {
            $xtpl->parse('main.tel');
            $numitems++;
        }
        if (! empty($block_config['youtube'])) {
            $xtpl->parse('main.youtube');
            $numitems++;
        }
        if (isset($site_mods['feeds'])) {
            $xtpl->assign('FEEDS_HREF', NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=feeds');
            $xtpl->parse('main.feeds');
            $numitems++;
        }

        if ($module_file == 'news' and $op == 'detail') {
            $xtpl->parse('main.fontsize');
            $numitems++;
        }

        $xtpl->assign('NUMITEMS', $numitems);

        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_menu_theme_btnstool($block_config);
}
