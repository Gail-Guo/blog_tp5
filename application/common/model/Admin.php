<?php

namespace app\common\model;

use think\Model;
use think\Loader;

class Admin extends Model
{
    protected $pk = 'admin_id';//声明主键
    //设置当前数据表的完整名称
    protected $table = 'blog_admin';  

    public function login($data)
    {
    	//1.验证
    	$validate = Loader::validate('Admin');

    	if (!$validate->check($data)) {
    		dump($validate->getError());
    	}
    	//2.匹配用户名和验证码
    }
}
