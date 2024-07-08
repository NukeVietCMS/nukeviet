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

if (! nv_function_exists('nv_menu_theme_hostline')) {
    function nv_menu_theme_hostline_config($module, $data_block, $lang_block)
    {
        $html = '<tr>';
        $html .= '	<td>' . $lang_block['hostlineso'] . '</td>';
        $html .= '	<td><input type="text" name="config_hostlineso" class="form-control" value="' . $data_block['hostlineso'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['hotlineurl'] . '</td>';
        $html .= '	<td><input type="text" name="config_hotlineurl" class="form-control" value="' . $data_block['hotlineurl'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['sosms'] . '</td>';
        $html .= '	<td><input type="text" name="config_sosms" class="form-control" value="' . $data_block['sosms'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['noidungsms'] . '</td>';
        $html .= '	<td><input type="text" name="config_noidungsms" class="form-control" value="' . $data_block['noidungsms'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['thoigiantu'] . '</td>';
        $html .= '	<td><input type="text" name="config_thoigiantu" class="form-control" value="' . $data_block['thoigiantu'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['thoigianden'] . '</td>';
        $html .= '	<td><input type="text" name="config_thoigianden" class="form-control" value="' . $data_block['thoigianden'] . '"/></td>';
        $html .= '</tr>';
        return $html;
    }

    function nv_menu_theme_hostline_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config']['hostlineso'] = $nv_Request->get_title('config_hostlineso', 'post');
        $return['config']['hotlineurl'] = $nv_Request->get_title('config_hotlineurl', 'post');
        $return['config']['sosms'] = $nv_Request->get_title('config_sosms', 'post'); 
        $return['config']['noidungsms'] = $nv_Request->get_title('config_noidungsms', 'post'); 
        $return['config']['thoigiantu'] = $nv_Request->get_title('config_thoigiantu', 'post');
        $return['config']['thoigianden'] = $nv_Request->get_title('config_thoigianden', 'post');
        return $return;
    } 
        if (!empty($config['hostlineso']) and !empty($nv_Request['hostlineso'])) {
            $xtpl->parse('main.hostlineso');
        }
        if (!empty($config['hotlineurl']) and !empty($nv_Request['hotlineurl'])) {
            $xtpl->parse('main.hotlineurl');
        }
        if (!empty($config['sosms']) and !empty($nv_Request['sosms'])) {
            $xtpl->parse('main.sosms');
        }
        if (!empty($config['noidungsms']) and !empty($nv_Request['noidungsms'])) {
            $xtpl->parse('main.noidungsms');
        }
        if (!empty($config['thoigiantu']) and !empty($nv_Request['thoigiantu'])) {
            $xtpl->parse('main.thoigiantu');
        } 
        if (!empty($config['thoigianden']) and !empty($nv_Request['thoigianden'])) {
            $xtpl->parse('main.thoigianden');
        }
		
    function nv_menu_theme_hostline($block_config)
	 {
        global $global_config, $site_mods, $lang_global, $module_file, $client_info, $op;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.hotline.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.hotline.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }
				
							
        include NV_ROOTDIR . '/themes/' . $block_theme . '/language/' . NV_LANG_INTERFACE . '.php';

        $xtpl = new XTemplate('global.hotline.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
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
    $content = nv_menu_theme_hostline($block_config);
}
