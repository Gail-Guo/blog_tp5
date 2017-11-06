<?php
namespace app\admin\controller;

use app\common\model\Admin;

use think\Controller;


class Login extends Controller
{
	public function login()
	{
		//echo Crypt::decrypt('admin111');
		if (request()->isPost()) {
			$res = (new Admin())->login(input('post.'));
			if ($res['valid']) {
			 	//说明登录成功	
			}else{
				//说明登录失败
			}
		}
		return $this->fetch('login');
	}
}