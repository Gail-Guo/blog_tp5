<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;

class Webset extends Controller
{
     protected $db;
    protected function _initialize()
    {
        parent::_initialize();
        $this->db = new \app\common\model\Webset();
    }

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $filed = db('webset')->select();
        $this->assign('filed',$filed);
        return $this->fetch();
    }

    
    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
    }
}
