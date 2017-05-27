--插入一段HTML基本标记
function html_snippet()
	output = [[
<!DOCTYPE html>
<html>
<head>
	<title>Untitled</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="">
	<script type="text/javascript" src=""></script>
</head>
<body>
</body>
</html>]]
	return output
end
-- 注册 HTML_snippet
ime.register_command('hl', 'html_snippet', 'HTML snippet')
-- 整合注册 html
ime.register_trigger('html_snippet', 'HTML snippet', {'html'}, '')

-- 求平方
function square(x)
	local y = x + 0
	return y * y
end
-- 求平方根
function sqrt(x)
	local y = x + 0
	return math.sqrt(y)
end
-- 注册 求平方
ime.register_command('sq', 'square', '求平方', 'none', '输入一个数，得到其平方')
-- 注册 求平方根
ime.register_command('sr', 'sqrt', '求平方根', 'none', '输入一个正数，得到其平方根')

-- 求阶乘
function factorial(argument)
	local x = argument + 0
	if x > 1 then
		return x * factorial(x-1)
	else
		return x
	end
end
-- 注册 求阶乘
ime.register_command('fa', 'factorial', '求阶乘', 'none', '输入一个正整数，得到阶乘结果')


--  左对齐
function Left_Justified()
	output = [[
数据是左对齐且空格填充的。]]
	return output
end
--  右对齐
function Right_Justified()
	output = [[
数据是右对齐且空格填充的。]]
	return output
end
-- 注册 左对齐
ime.register_command('lj', 'Left_Justified', '左对齐')
-- 注册 右对齐
ime.register_command('rj', 'Right_Justified', '右对齐')


-- 座右铭
function My_Memo()
	output = [[
长风破浪会有时，直挂云帆济沧海。]]
	return output
end
-- 注册 座右铭
ime.register_command('mm', 'My_Memo', '我的座右铭')


-- 如果有必要的话
function If_Required()
	output = [[
如果有必要的话，]]
	return output
end
-- 注册 如果有必要的话
ime.register_command('ir', 'If_Required', '如果有必要的话')

-- 摄氏温度
function Celius_Temperature()
	output = [[
℃]]
	return output
end
-- 注册 摄氏温度
ime.register_command('wd', 'Celius_Temperature', '摄氏温度')

-- Markdown标题
_MARKDOWN_TITLES = {
[[
#	]],

[[
##	]],

[[
###	]],

[[
####	]],

[[
#####	]],

[[
######	]],

}
function MarkdownTitle(n)
  n = math.min(n, 6)
  n = math.max(n, 1)
local index = n
local Title = _MARKDOWN_TITLES[index]
return Title
end
-- 注册 Markdown标题
ime.register_command('bt', 'MarkdownTitle', 'Markdown标题',"none", "输入标题级别，1，2，3，4，5，6")

-- 货币符号
_Currency_Symbols = {
-- 人民币
[[
¥]],

-- 英镑
[[
￡]],

-- 欧元
[[
€]],

-- 分，美元，欧元和其他一些货币辅助单位的符号
[[
￠]],

-- 韩元/朝鲜元
[[
₩]],

-- 俄罗斯卢布
[[
₽]],

-- 泰铢
[[
฿]],

-- 菲律宾比索
[[
₱]],

-- 里拉
[[
₤]],

-- 伊朗里亚尔
[[
﷼]],

-- 老挝基普
[[
₭]],

-- 蒙古图格里克
[[
₮]],

-- 乌克兰赫里夫尼亚
[[
₴]],

-- 以色列新舍克符号
[[
₪]],

-- 哈萨克斯坦坚戈
[[
〒]],

-- 尼日利亚奈拉
[[
₦]],

-- 文 （表示千分之一元或十分之一分）
[[
₥]],

-- 波兰兹罗提，波兰的货币符号
[[
zł]],

-- 日元
[[
￥]],

}
function CurrencySymbol(n)
  n = math.min(n, 20)
  n = math.max(n, 1)
local index = n
local Symbol = _Currency_Symbols[index]
return Symbol
end
-- 注册 货币符号
ime.register_command('hb', 'CurrencySymbol', '货币符号',"none", "输入序号，1，2，3，4，5，6...")

