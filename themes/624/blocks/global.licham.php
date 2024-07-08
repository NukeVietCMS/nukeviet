<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Sat, 08 Feb 2014 06:33:39 GMT
 */

if (!defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (!nv_function_exists('nv_licham_blocks')) {
    /**
     * nv_licham_config()
     *
     * @param mixed $module
     * @param mixed $data_block
     * @param mixed $lang_block
     * @return
     */
    function nv_licham_config($module, $data_block, $lang_block)
    {
        $html = '<tr>';
        $html .= '<td>Width</td>';
        $html .= '<td><input type="text" class="w200 form-control" name="width" value="' . nv_htmlspecialchars($data_block['width']) . '" size="80"></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>Height</td>';
        $html .= '<td><input type="text" class="w200 form-control" name="height" value="' . nv_htmlspecialchars($data_block['height']) . '" size="80"></td>';
        $html .= '</tr>';

        return $html;
    }

    /**
     * nv_licham_config_submit()
     *
     * @param mixed $module
     * @param mixed $lang_block
     * @return
     */
    function nv_licham_config_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['width'] = $nv_Request->get_title('width', 'post', '');
        $return['config']['height'] = $nv_Request->get_title('height', 'post', '');

        return $return;
    }

    /**
     * laGenerateRandomString()
     *
     * @param   integer $length
     * @return  string
     */
    function laGenerateRandomString($length = 10)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    /**
     * nv_licham_blocks()
     *
     * @param mixed $block_config
     * @return
     */
    function nv_licham_blocks($block_config)
    {
        global $global_config, $lang_global;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.licham.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.licham.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        if (!isset($block_config['width']) || empty($block_config['width'])) {
            $block_config['width'] = '100%';
        }

        if (!isset($block_config['height']) || empty($block_config['height'])) {
            $block_config['height'] = '750px';
        }

        $xtpl = new XTemplate('global.licham.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('BLOCKID', 'lich-am-' . laGenerateRandomString());
        $xtpl->assign('CONFIG', $block_config);
        $base = 'https://licham.net';
        $xtpl->assign('SOURCE_BASE', $base);
        $xtpl->assign('SOURCE_BASE_TEXT', explode('://', $base)[1]);
        $xtpl->parse('main.embed');
        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_licham_blocks($block_config);
}
