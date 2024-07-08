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

if (! nv_function_exists('nv_menu_theme_comment')) {
    function nv_menu_theme_comment_config($module, $data_block, $lang_block)
    {
        $html = '<tr>';
        $html .= '	<td>' . $lang_block['dataappid'] . '</td>';
        $html .= '	<td ><input placeholder="' . $data_block['dataappid'] . '" type="text" name="config_dataappid" class="form-control" value="' . $data_block['dataappid'] . '"/> 
		 Tài liệu hướng dẫn <a  title="' . $lang_block['datahref'] . '" name=""><span itemprop="url">? URL</span></a> lấy ' . $lang_block['dataappid'] . ' 
		<a href="https://developers.zalo.me/docs/social/zalo-comment-widget" target="_blank"><span itemprop="url">tại đây</span></a></td>';
        $html .= '</tr>';
      
	  // $html .= '<tr>';
      //  $html .= '	<td colspan="2" title="' . $lang_block['datahref'] . '">Tài liệu hướng dẫn URL </td>';
       // $html .= '	<td><input placeholder="' . $data_block['datahref'] . '" type="text" name="config_datahref" class="form-control" value="' . $data_block['datahref'] . '"/></td>';
      //  $html .= '</tr>';
		
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['datasize'] . '</td>';
        $html .= '	<td><input placeholder="' . $data_block['datasize'] . '" type="text" name="config_datasize" class="form-control" value="' . $data_block['datasize'] . '"/></td>';
        $html .= '</tr>';
        
        return $html;
    }

    function nv_menu_theme_comment_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config']['dataappid'] = $nv_Request->get_title('config_dataappid', 'post');
        $return['config']['datahref'] = $nv_Request->get_title('config_datahref', 'post');
        $return['config']['datasize'] = $nv_Request->get_title('config_datasize', 'post');  
        return $return;
    } 

    function nv_menu_theme_comment($block_config)
	 {
        global $global_config, $site_mods, $lang_global, $module_file, $client_info, $op;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.zalo_comment.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.zalo_comment.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        include NV_ROOTDIR . '/themes/' . $block_theme . '/language/' . NV_LANG_INTERFACE . '.php';

        $xtpl = new XTemplate('global.zalo_comment.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
       $xtpl->assign('LANG', $lang_global);
        //$xtpl->assign('MLANG', $lang_module);
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
    $content = nv_menu_theme_comment($block_config);
}
