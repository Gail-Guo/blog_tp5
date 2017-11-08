<?php

namespace app\admin\controller;

use houdunwang\arr\Arr;
use think\Controller;
use think\Request;


class Category extends Controller
{
    protected $db;
    protected function _initialize()
    {
        parent::_initialize();
        $this->db = new \app\common\model\Category();
    }
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //$filed = db('cate')->select();
        $filed = $this->db->getAll();
        $this->assign('filed',$filed);
        return $this->fetch();
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
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
     *
     * @return \think\Response
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
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit()
    {
        if (request()->isPost()) {
            //halt($_POST);
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
     *
     * @param  int  $id
     * @return \think\Response
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
