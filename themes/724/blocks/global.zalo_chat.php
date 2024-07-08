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

if (! nv_function_exists('nv_menu_theme_zalochat')) {
    function nv_menu_theme_zalochat_config($module, $data_block, $lang_block)
    {
        $html = '<tr>';
        $html .= '	<td>' . $lang_block['idtaikhoang'] . '</td>';
        $html .= '	<td><input type="text" name="config_idtaikhoang" class="form-control" value="' . $data_block['idtaikhoang'] . '"/> Tài liệu hướng dẫn lấy ID 
		<a href="http://developers.zalo.me/docs/social/share" target="_blank"><span itemprop="url">tại đây</span></a></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['loichao'] . '</td>';
        $html .= '	<td><input type="text" name="config_loichao" class="form-control" value="' . $data_block['loichao'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['thoigian'] . '</td>';
        $html .= '	<td><input type="text" name="config_thoigian" class="form-control" value="' . $data_block['thoigian'] . '"/></td>';
        $html .= '</tr>';   return $html;
    }

    function nv_menu_theme_zalochat_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config']['idtaikhoang'] = $nv_Request->get_title('config_idtaikhoang', 'post');
        $return['config']['loichao'] = $nv_Request->get_title('config_loichao', 'post');
        $return['config']['thoigian'] = $nv_Request->get_title('config_thoigian', 'post'); 
        $return['config']['noidungsms'] = $nv_Request->get_title('config_noidungsms', 'post'); 
        $return['config']['thoigiantu'] = $nv_Request->get_title('config_thoigiantu', 'post');
        $return['config']['thoigianden'] = $nv_Request->get_title('config_thoigianden', 'post');
        return $return;
    } 

    function nv_menu_theme_zalochat($block_config)
	 {
        global $global_config, $site_mods, $lang_global, $module_file, $op;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.zalo_chat.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.zalo_chat.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        include NV_ROOTDIR . '/themes/' . $block_theme . '/language/' . NV_LANG_INTERFACE . '.php';

        $xtpl = new XTemplate('global.zalo_chat.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('LANG', $lang_global); 
        $xtpl->assign('BLOCK_THEME', $block_theme);
		//$xtpl->assign('MODULE', $module);
        $xtpl->assign('DATA', $block_config); 
        $xtpl->assign('SITE_NAME', $global_config['site_name']);
		$xtpl->assign('SITE_URL', $global_config['site_url']);
        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_menu_theme_zalochat($block_config);
}
