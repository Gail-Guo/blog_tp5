<?php

namespace app\common\model;

use think\Model;
use think\Paginator;
// use app\common\model\ArcTag;

class Article extends Model
{
    //声明主键
    protected $pk = 'arc_id';
    //数据表名
    protected $table = 'blog_article';
    protected $auto = ['admin_id'];
    protected $insert = ['sendtime'];
    protected $update = ['updatetime'];

    protected function setAdminIdAttr($value)
    {
        return session('admin.admin_id');
    }

    protected function setSendTimeAttr($value)
    {
        return time();
    }

    protected function setUpdateTimeAttr($value)
    {
        return time();
    }

    public function getAll()
    {
        return db('article')->alias('a')
                    ->join('__CATE__ c','a.cate_id=c.cate_id')
                    ->where('a.is_recycle',2)
                    ->field('a.arc_id,a.arc_title,a.arc_author,a.sendtime,c.cate_name,a.arc_sort')
                    ->order('a.arc_sort desc,a.sendtime desc,a.arc_id desc')
                    ->paginate(5);
    }


    /**
    * 添加文章
    */
    public function store($data)
    {
        if (!isset($data['tag'])) {
            return ['valid'=>0,'msg'=>'请选择标签'];
        }
    	//执行验证和添加
    	$result = $this->validate(true)->allowField(true)->save($data,$data['arc_id']);
        if ($result) {

            foreach ($data['tag'] as $v) {
                $arcTagData = [
                    'arc_id' => $this->arc_id,
                    'tag_id' => $v
                ];
                (new ArcTag())->save($arcTagData);
            }
            return ['valid'=>1,'msg'=>'操作成功'];
        }else{
            return ['valid'=>0,'msg'=>$this->getError()];
        }
    }

    /**
     * 将指定资源放入回收站
     *
     */
    public function inRec($arc_id)
    {
        $result = db('article')->where('arc_id', $arc_id)->update(['is_recycle' => 1]);
        if ($result) {
            return ['valid'=>1,'msg'=>'已删除至回收站'];
        }else{
            return ['valid'=>0,'msg'=>$this->getError()];
        }
    }

     /**
     * 将指定资源还原至文章列表
     *
     */
    public function outRec($arc_id)
    {
        $result = db('article')->where('arc_id', $arc_id)->update(['is_recycle' => 2]);
        if ($result) {
            return ['valid'=>1,'msg'=>'已还原至文章列表'];
        }else{
            return ['valid'=>0,'msg'=>$this->getError()];
        }
    }


    public function del($arc_id)
    {
        $arc_id = input('get.arc_id');
        if(Article::destroy($arc_id)){
            return ['valid'=>1,'msg'=>'删除成功'];
        }else{
            return ['valid'=>0,'msg'=>$this->getError()];
        }
    }

}
