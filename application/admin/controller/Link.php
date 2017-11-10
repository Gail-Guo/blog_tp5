<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;

/**
 * 友情链接列表控制器
 */
class Link extends Controller
{
    protected $db;
    protected function _initialize()
    {
        parent::_initialize();
        $this->db = new \app\common\model\Link();
    }


    /**
     * 列表页
     */

    public function index()
    {
        $field = db('link')->select();
        $this->assign('field',$field);
        return $this->fetch();
    }


    /**
     * 添加
     */

    public function add()
    {
        if (request()->isPost()) {
            $res = $this->db->add(input('post.'));
            if ($res['valid']) {
                $this->success($res['msg'],'index');exit;
            }else{
                $this->error($res['msg']);exit;
            }
        }
        return $this->fetch();
    }


    /**
     * 编辑资源表
     */

    public function edit()
    {
        $link_id = input('param.link_id');
        $oldData = $this->db->where('link_id',$link_id)->find();
        $this->assign('oldData',$oldData);

        if (request()->isPost()) {
            $res = $this->db->edit(input('post.'),$link_id);
            if ($res['valid']) {
                $this->success($res['msg'],'index');exit;
            }else{
                $this->error($res['msg']);exit;
            }
        }
        return $this->fetch();
    }


    /**
     * 删除
     */
    public function del()
    {
        $res = $this->db->del(input('get.link_id'));
        if ($res['valid']) {
                $this->success($res['msg'],'index');exit;
            }else{
                $this->error($res['msg']);exit;
            }
    }
}
