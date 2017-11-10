<?php
namespace app\admin\validate;
use think\Validate;
/** 
* 链接验证规则
*/
class Link extends Validate
{
	protected $rule = [
		'link_name' => 'require',
		'link_url' => 'require|url',
		'link_sort' => 'require|number|between:1,9999'
	];

	protected $message = [
		'link_name.require' => '请输入链接名',
		'link_url.require' => '请输入链接地址',
		'link_url.url' => '链接格式不符合规则',
		'link_sort.require' => '请输入链接顺序',
		'link_sort.number' => '链接顺序必须为数字',
		'link_sort.between' => '链接顺序必须在1到9999之间',
	];
}