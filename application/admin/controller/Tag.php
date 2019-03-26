<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;


//标签
class Tag extends Controller
{

    protected $db;
    protected function _initialize()
    {
        parent::_initialize();
        $this->db = new \app\common\model\Tag();
    }

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $field = db('tag')->paginate(3);
        $this->assign('field',$field);
        return $this->fetch();
    }
    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function store()
    {
        //halt($_POST);
        $tag_id = input('param.tag_id');
       
        if (request()->isPost()) {
            $res = $this->db->store(input('post.'));
            if ($res['valid']) {
                $this->success($res['msg'],'index');exit;
            }else{
                $this->error($res['msg']);exit;
            }
        }
       if($tag_id)
        {
            //说明是编辑请求
            $oldData = $this->db->find($tag_id);

        }else{
            //添加
            $oldData = ['tag_name'=>''];
        }
        $this->assign('oldData',$oldData);
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
        $res = $this->db->del(input('get.tag_id'));
        if ($res['valid']) {
            $this->success($res['msg'],'index');exit;
        }else{
            $this->error($res['msg']);exit;
        }
    }
}
