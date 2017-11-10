<?php

namespace app\common\model;

use think\Model;

class Link extends Model
{
    //声明主键
    protected $pk = 'link_id';
    //数据表名
    protected $table = 'blog_link';

    public function add($data)
    {
    	//执行验证和添加
    	$result = $this->validate(true)->save($data);
        if ($result) {
            return ['valid'=>1,'msg'=>'添加成功'];
        }else{
            return ['valid'=>0,'msg'=>$this->getError()];
        }
    }

    public function edit($data,$link_id)
    {
    	//执行验证和添加
    	$result = $this->validate(true)->save($data,[$this->pk=>$link_id]);
        if ($result) {
            return ['valid'=>1,'msg'=>'修改成功'];
        }else{
            return ['valid'=>0,'msg'=>$this->getError()];
        }
    }


    public function del($link_id)
    {
        $link_id = input('get.link_id');
    	if(Link::destroy($link_id)){
    		return ['valid'=>1,'msg'=>'删除成功'];
    	}else{
    		return ['valid'=>0,'msg'=>$this->getError()];
    	}
    }
}
