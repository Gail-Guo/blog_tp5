<?php
namespace app\admin\validate;
use think\Validate;
/** 
* 栏目验证规则
*/
class Category extends Validate
{
	protected $rule = [
		'cate_name' => 'require',
		'cate_sort' => 'require|number|between:1,9999'
		
	];

	protected $message = [
		'cate_name.require' => '请输入栏目名',
		'cate_sort.require' => '请输入栏目顺序',
		'cate_sort.number' => '排序必须为数字',
		'cate_sort.between' => '排序必须在1到9999之间'
	];
}