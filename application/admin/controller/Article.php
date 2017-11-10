<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\common\model\Category;
/**
 * 文章列表控制器
 */
class Article extends Controller
{
    protected $db;

    protected function _initialize()
    {
        parent::_initialize();
        $this->db = new \app\common\model\Article();
    }


    /**
     * 列表页
     */

    public function index()
    {
        $field = $this->db->getAll();
        $this->assign('field',$field);
        return $this->fetch();
    }


    /**
     * 添加/编辑
     *
     * @param  \think\Request  $request
     */

    public function store()
    {
        //获得主键id
        $arc_id = input('param.arc_id');

        //通过模型写入数据
        if (request()->isPost()) {
            $res = $this->db->store(input('post.'));

            if ($res['valid']) {
                $this->success($res['msg'],'index');exit;
            }else{
                $this->error($res['msg']);exit;
            }
        }

        //判断是编辑界面还是添加
        if($arc_id)
        {
            //说明是编辑请求
            $oldData = $this->db->find($arc_id);
            $oldTag = db('arc_tag')->find($arc_id);
        }else{
            //添加
            $oldData = ['arc_title'=>'',
                        'arc_author'=>'',
                        'arc_sort'=>'',
                        'cate_id'=>'',
                        'arc_digest'=>'',
                        'arc_content'=>''
                    ];
            $oldTag = ['tag_id' => ''];
        }
        $this->assign('oldTag',$oldTag);
        $this->assign('oldData',$oldData);//将默认值传递

        //1.分类
        $cateData = (new Category())->getAll();
        $this->assign('cateData',$cateData);
        //2.标签
        $tagData = db('tag')->select();
        $this->assign('tagData',$tagData);
        return $this->fetch();
    }


    /**
     * 将指定资源放入回收站
     *
     * @return \think\Response
     */

    public function inRec()
    {
        $res = $this->db->inRec(input('get.arc_id'));
        if ($res['valid']) {
                $this->success($res['msg'],'index');exit;
            }else{
                $this->error($res['msg']);exit;
            }
    }


    /**
     * 将指定资源还原至文章列表
     */

    public function outRec()
    {
        $res = $this->db->outRec(input('get.arc_id'));
        if ($res['valid']) {
                $this->success($res['msg'],'index');exit;
            }else{
                $this->error($res['msg']);exit;
            }
    }


    /**
     * 显示回收站中的数据
     */

    public function recycle()
    {
        $field = $this->db->where('is_recycle',1)->select();
        $this->assign('field',$field);
        return $this->fetch();
    }


    /**
     * 彻底删除文章
     */

    public function del()
    {
        $res = $this->db->del(input('get.arc_id'));
        if ($res['valid']) {
                $this->success($res['msg'],'recycle');exit;
            }else{
                $this->error($res['msg']);exit;
            }
    }

}
