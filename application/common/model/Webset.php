<?php

namespace app\common\model;

use think\Model;

class Webset extends Model
{
    //声明主键
    protected $pk = 'webset_id';
    //数据表名
    protected $table = 'blog_webset';

    public function edit($data)
    {
    	$result = $this->validate(true)->save($data,[$this->pk=>$data['webset_id']]);
    	if ($result) {
    		return ['valid'=>1,'msg'=>'编辑成功'];
    	}else{
    		return ['valid'=>0,'msg'=>$this->getError()];
    	}
    }
}
