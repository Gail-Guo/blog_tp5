<?php
namespace app\admin\controller;

use app\common\model\Admin;

use think\Controller;


class Login extends Controller
{
	public function login()
	{
		//登录页
		if (request()->isPost()) {
			$res = (new Admin())->login(input('post.'));
			if ($res['valid']) {
			 	//说明登录成功	
			 	$this->success($res['msg'],'admin/entry/index');exit;
			}else{
				//说明登录失败
				$this->error($res['msg']);exit;
			}
		}
		return $this->fetch('index');
	}
}