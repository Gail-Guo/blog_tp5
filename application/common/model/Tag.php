<?php

namespace app\common\model;

use think\Model;

class Tag extends Model
{
    //声明主键
    protected $pk = 'tag_id';
    //数据表名
    protected $table = 'blog_tag';

    public function store($data)
    {
    	//执行验证和添加
    	$result = $this->validate(true)->save($data,$data['tag_id']);
        if ($result) {
            return ['valid'=>1,'msg'=>'操作成功'];
        }else{
            return ['valid'=>0,'msg'=>$this->getError()];
        }
    }


    public function del($tag_id)
    {
        $tag_id = input('get.tag_id');
    	if(Tag::destroy($tag_id)){
    		return ['valid'=>1,'msg'=>'删除成功'];
    	}else{
    		return ['valid'=>0,'msg'=>$this->getError()];
    	}
    }
}
