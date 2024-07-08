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

if (! nv_function_exists('nv_menu_theme_ChatPluginFB')) {
    function nv_menu_theme_ChatPluginFB_config($module, $data_block, $lang_block)
    {
        $html = '<tr>';
        $html .= '	<td>' . $lang_block['pageid'] . '</td>';
        $html .= '	<td><input type="text" name="config_pageid" class="form-control" value="' . $data_block['pageid'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['themecolor'] . '</td>';
        $html .= '	<td><input type="text" name="config_themecolor" class="form-control" value="' . $data_block['themecolor'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['loggedin'] . '</td>';
        $html .= '	<td><input type="text" name="config_loggedin" class="form-control" value="' . $data_block['loggedin'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['loggedout'] . '</td>';
        $html .= '	<td><input type="text" name="config_loggedout" class="form-control" value="' . $data_block['loggedout'] . '"/></td>';
        $html .= '</tr>';
 
        return $html;
    }

    function nv_menu_theme_ChatPluginFB_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config']['pageid'] = $nv_Request->get_title('config_pageid', 'post');
        $return['config']['themecolor'] = $nv_Request->get_title('config_themecolor', 'post');
        $return['config']['loggedin'] = $nv_Request->get_title('config_loggedin', 'post'); 
        $return['config']['loggedout'] = $nv_Request->get_title('config_loggedout', 'post');  
        return $return;
    } 
        if (!empty($config['pageid']) and !empty($nv_Request['pageid'])) {
            $xtpl->parse('main.pageid');
        }
        if (!empty($config['themecolor']) and !empty($nv_Request['themecolor'])) {
            $xtpl->parse('main.themecolor');
        }
        if (!empty($config['loggedin']) and !empty($nv_Request['loggedin'])) {
            $xtpl->parse('main.loggedin');
        }
        if (!empty($config['loggedout']) and !empty($nv_Request['loggedout'])) {
            $xtpl->parse('main.loggedout');
        }
 
		
    function nv_menu_theme_ChatPluginFB($block_config)
	 {
        global $global_config, $site_mods, $lang_global, $module_file, $client_info, $op;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.ChatPluginFB.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.ChatPluginFB.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }
				
							
        include NV_ROOTDIR . '/themes/' . $block_theme . '/language/' . NV_LANG_INTERFACE . '.php';

        $xtpl = new XTemplate('global.ChatPluginFB.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('LANG', $lang_global);
        $xtpl->assign('MLANG', $lang_module);
        $xtpl->assign('BLOCK_THEME', $block_theme);
		//$xtpl->assign('MODULE', $module);
        $xtpl->assign('DATA', $block_config); 
        $xtpl->assign('SITE_NAME', $global_config['site_name']);
		$xtpl->assign('SITE_URL', $global_config['site_url']); 
		$xtpl->assign('SELFURL', $client_info['selfurl']); 
		$xtpl->parse('main');
        return $xtpl->text('main');
    }

	 
}

if (defined('NV_SYSTEM')) {
    $content = nv_menu_theme_ChatPluginFB($block_config);
}
