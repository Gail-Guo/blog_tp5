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
		return Arr::tree(db('cate')->order('cate_sort desc,cate_id')->select(), 'cate_name', $fieldPri = 'cate_id', $fieldPid = 'cate_pid');
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

    public function getCateData($cate_id)
    {
    	//1.找到子集
    	$cate_ids = $this->getSon(db('cate')->select(),$cate_id);
    	$cate_ids[] = $cate_id;
    	$field = db('cate')->whereNotIn('cate_id',$cate_ids)->select();
    	return Arr::tree($field,'cate_name','cate_id','cate_pid');
    }
    /**
    * 找子集
    */

    public function getSon($data,$cate_id)
    {
    	static $temp = [];
    	foreach ($data as $k => $v) {
    		if ($cate_id == $v['cate_pid']) {
    			$temp[] = $v['cate_id'];
    			$this->getSon($data,$v['cate_id']);
    		}
    	}
    	return $temp;
    }
    /**
    * 编辑栏目
    */
    public function editCate($data)
    {
    	$result = $this->validate(true)->save($data,[$this->pk=>$data['cate_id']]);
    	if ($result) {
    		return ['valid'=>1,'msg'=>'编辑成功'];
    	}else{
    		return ['valid'=>0,'msg'=>$this->getError()];
    	}
    }

    public function del($cate_id)
    {
    	$cate_pid = $this->where('cate_id',$cate_id)->value('cate_pid');
    	$this->where('cate_pid',$cate_id)->update(['cate_pid'=>$cate_pid]);
    	if(Category::destroy($cate_id)){
    		return ['valid'=>1,'msg'=>'删除成功'];
    	}else{
    		return ['valid'=>0,'msg'=>$this->getError()];
    	}
    }
}
