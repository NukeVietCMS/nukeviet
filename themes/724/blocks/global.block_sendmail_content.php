<?php

/**
 * @Project NUKEVIET 4.x
 * @Author mynukeviet (contact@mynukeviet.net)
 * @Copyright (C) 2016 mynukeviet. All rights reserved
 * @Createdate Wed, 12 Oct 2016 03:32:22 GMT
 */
if (! defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (! nv_function_exists('nv_block_sendmail_content')) {
    
    function nv_block_sendmail_content_config($module, $data_block, $lang_block)
    {    
        $html = '<tr>';
        $html .= '<td>' . $lang_block['subject'] . '</td>';
        $html .= '<td><input type="text" class="form-control" name="config_subject" value="' . $data_block['subject'] . '" ></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>' . $lang_block['email'] . '</td>';
        $html .= '<td><input type="email" class="form-control" name="config_email" value="' . $data_block['email'] . '" ></td>';
        $html .= '</tr>';
    
        return $html;
    }
    
    function nv_block_sendmail_content_submit($module, $lang_block)
    {
        global $nv_Request;
    
        $return = array();
        $return['error'] = array();
        $return['config']['subject'] = $nv_Request->get_title('config_subject', 'post');
        $return['config']['email'] = $nv_Request->get_title('config_email', 'post');
        
        $checkmail = nv_check_valid_email($return['config']['email']);
        
        if(empty($return['config']['subject'])){
            $return['error']['subject'] = $lang_block['error_required_subject'];
        }elseif(!empty($checkmail)){
            $return['error']['email'] = $checkmail;
        }
        
        return $return;
    }
    
    function nv_block_sendmail_content($block_config)
    {
        global $global_config, $site_mods, $nv_Request, $client_info, $lang_block;

        if($nv_Request->isset_request('sendmail_content', 'post')){
            $content = $nv_Request->get_title('content', 'post', '');
            if(empty($content)){
                die('NO_' . $lang_block['error_required_content']);
            }
            
            $from = array($global_config['site_name'], $global_config['site_email']);
            $sendmail = nv_sendmail($from, $block_config['email'], $block_config['subject'], $content);
            if($sendmail){
                die('OK_' . $lang_block['success']);
            }else{
                die('NO_' . $lang_block['error_sendmail']);
            }
        }
        
        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.block_sendmail_content.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.block_sendmail_content.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('global.block_sendmail_content.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('LANG', $lang_block);
        $xtpl->assign('SELFURL', $client_info['selfurl']);

        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_block_sendmail_content($block_config);
}
