<?php
namespace app\admin\validate;
use think\Validate;
/** 
* 栏目验证规则
*/
class Tag extends Validate
{
	protected $rule = [
		'tag_name' => 'require',
		
	];

	protected $message = [
		'tag_name.require' => '请输入标签名',
	];
}