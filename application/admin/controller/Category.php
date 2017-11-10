<?php

namespace app\admin\controller;

use houdunwang\arr\Arr;
use think\Controller;
use think\Request;
/**
 * 栏目列表控制器
 */

class Category extends Controller
{
    protected $db;
    protected function _initialize()
    {
        parent::_initialize();
        $this->db = new \app\common\model\Category();
    }


    /**
     * 栏目列表页
     *
     */

    public function index()
    {
        //$filed = db('cate')->select();
        $filed = $this->db->getAll();
        $this->assign('filed',$filed);
        return $this->fetch();
    }


    /**
     * 添加栏目
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
     * 添加子集
     */
    public function addSon()
    {
        $cate_id = input('param.cate_id');
        $data = $this->db->where('cate_id',$cate_id)->find();
        $this->assign('data',$data);

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
     * 编辑
     */

    public function edit()
    {
        if (request()->isPost()) {
            $res = $this->db->editCate(input('post.'));
            if ($res['valid']) {
                $this->success($res['msg'],'index');exit;
            }else{
                $this->error($res['msg']);exit;
            }
        }

        $cate_id = input('param.cate_id');
        $oldData = $this->db->find($cate_id);
        $this->assign('oldData',$oldData);
        //处理所属数据，不能包含自己和自己的子集数据
        $cateData = $this->db->getCateData($cate_id);
        $this->assign('cateData',$cateData);
        return $this->fetch();
    }


    /**
     * 删除指定资源
     */
    public function del()
    {
        $res = $this->db->del(input('get.cate_id'));
        if ($res['valid']) {
                $this->success($res['msg'],'index');exit;
            }else{
                $this->error($res['msg']);exit;
            }
    }
}
