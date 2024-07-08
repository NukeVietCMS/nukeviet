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

if (! nv_function_exists('nv_menu_theme_zaloshare')) {
    function nv_menu_theme_zaloshare_config($module, $data_block, $lang_block)
    {
        $html = '<tr>';
        $html .= '	<td>' . $lang_block['accountdi'] . '</td>';
        $html .= '	<td><input type="text" name="config_accountdi" class="form-control" value="' . $data_block['accountdi'] . '"/> Tài liệu hướng dẫn lấy ID 
		<a href="http://developers.zalo.me/docs/" target="_blank"><span itemprop="url">tại đây</span></a></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['layout'] . '</td>';
        $html .= '	<td><input type="text" name="config_layout" class="form-control" value="' . $data_block['layout'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['choosecolor'] . '</td>';
        $html .= '	<td><input type="text" name="config_choosecolor" class="form-control" value="' . $data_block['choosecolor'] . '"/></td>';
        $html .= '</tr>';
        
        return $html;
    }

    function nv_menu_theme_zaloshare_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config']['accountdi'] = $nv_Request->get_title('config_accountdi', 'post');
        $return['config']['layout'] = $nv_Request->get_title('config_layout', 'post');
        $return['config']['choosecolor'] = $nv_Request->get_title('config_choosecolor', 'post'); 
        $return['config']['noidungsms'] = $nv_Request->get_title('config_noidungsms', 'post'); 
        $return['config']['thoigiantu'] = $nv_Request->get_title('config_thoigiantu', 'post');
        $return['config']['thoigianden'] = $nv_Request->get_title('config_thoigianden', 'post');
        return $return;
    } 

    function nv_menu_theme_zaloshare($block_config)
	 {
        global $global_config, $site_mods, $lang_global, $module_file, $client_info, $op;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.zalo_share.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.zalo_share.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        include NV_ROOTDIR . '/themes/' . $block_theme . '/language/' . NV_LANG_INTERFACE . '.php';

        $xtpl = new XTemplate('global.zalo_share.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
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
    $content = nv_menu_theme_zaloshare($block_config);
}
