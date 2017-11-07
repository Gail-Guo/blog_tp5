<?php

namespace app\common\model;

use houdunwang\arr\Arr;
use think\Model;

class Category extends Model
{
	//声明主键
    protected $pk = 'cate_id';
    //数据表名
    protected $table = 'blog_cate';

    public function getAll()
	{
		/** hdphp.com
		Arr::tree($data, $title, $fieldPri = 'cid', $fieldPid = 'pid');
			参数                    说明
			$data                 	数组
			$title                	字段名称
			$fieldPri             	主键 id
			$fieldPid             	父 id
			*/
		//return Arr::tree(db('cate')->order('cate_sort desc,cate_id')->select(), 'cate_name', $fieldPri = 'cate_id', $fieldPid = 'cate_pid');
	}

    public function add($data)
    {
    	//执行验证和添加
    	$result = $this->validate(true)->save($data);
    	if (false === $result) {
    		return ['valid'=>0,'msg'=>$this->getError()];
    	}else{
    		return ['valid'=>1,'msg'=>'添加成功'];
    	}
    }
}
