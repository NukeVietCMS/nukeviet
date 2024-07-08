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

if (! nv_function_exists('nv_menu_theme_zado')) {
    function nv_menu_theme_zalo_config($module, $data_block, $lang_block)
    {
        $html = '<tr>';
        $html .= '	<td>' . $lang_block['accountid'] . '</td>';
        $html .= '	<td><input type="text" name="config_accountid" class="form-control" value="' . $data_block['accountid'] . '"/>Tài liệu hướng dẫn lấy ID 
		<a href="http://developers.zalo.me/docs/" target="_blank"><span itemprop="url">tại đây</span></a></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['width'] . '</td>';
        $html .= '	<td><input type="text" name="config_width" class="form-control" value="' . $data_block['width'] . '"/></td>';        $html .= '</tr>';        $html .= '<tr>';        $html .= '	<td>' . $lang_block['height'] . '</td>';        $html .= '	<td><input type="text" name="config_height" class="form-control" value="' . $data_block['height'] . '"/></td>';        $html .= '</tr>';        $html .= '<tr>';        $html .= '	<td>' . $lang_block['anhbia'] . '</td>';        $html .= '	<td><input type="text" name="config_anhbia" class="form-control" value="' . $data_block['anhbia'] . '"/></td>';        $html .= '</tr>';        $html .= '<tr>';        $html .= '	<td>' . $lang_block['sotin'] . '</td>';        $html .= '	<td><input type="text" name="config_sotin" class="form-control" value="' . $data_block['sotin'] . '"/></td>';        $html .= '</tr>';        return $html;
    }

    function nv_menu_theme_zalo_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config']['accountid'] = $nv_Request->get_title('config_accountid', 'post');
        $return['config']['width'] = $nv_Request->get_title('config_width', 'post');
        $return['config']['height'] = $nv_Request->get_title('config_height', 'post');
        $return['config']['anhbia'] = $nv_Request->get_title('config_anhbia', 'post');
        $return['config']['sotin'] = $nv_Request->get_title('config_sotin', 'post');
        return $return;
    } 

    function nv_menu_theme_zado($block_config)
    {
        global $global_config, $site_mods, $lang_global, $module_file, $op;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.Zalo_Widget.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.Zalo_Widget.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        include NV_ROOTDIR . '/themes/' . $block_theme . '/language/' . NV_LANG_INTERFACE . '.php';

        $xtpl = new XTemplate('global.Zalo_Widget.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('LANG', $lang_global);
        $xtpl->assign('MLANG', $lang_module);
        $xtpl->assign('BLOCK_THEME', $block_theme);
        $xtpl->assign('DATA', $block_config); 
        
        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_menu_theme_zado($block_config);
}
