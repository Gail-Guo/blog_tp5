<?php
namespace app\admin\controller;

use think\Controller;
use app\common\model\Admin;

class Entry extends Common
{
	//首页
	public function index()
	{
		return $this->fetch();
	}


	//修改密码
	public function pass()
	{
		if (request()->isPost()) {
			$res = (new Admin())->pass(input('post.'));
			if ($res['valid']) {
				//清除session
				session(null);
				//跳转界面
				$this->success($res['msg'],'admin/entry/index');exit;
			}else{
				$this->error($res['msg']);exit;
			}
		}
		return $this->fetch();
	}
}