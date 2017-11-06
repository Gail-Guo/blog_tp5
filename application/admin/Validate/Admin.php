<?php
namespace app\admin\validate;
use think\Validate;

class Admin extends Validate
{
	protected $rule = [
		'admin_username' => 'required',
		'admin_password' => 'required',
		'code' => 'required'
	];

	protected $message = [
		'admin_username.required' => '请输入用户名',
		'admin_password.required' => '请输入密码',
		'code.require' => '请输入验证码'
	];
}