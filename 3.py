import re

# 测试字符串
test_string = '  L4_2, L5_2, L3_2 = asdasdsasd'

# 定义正则表达式
pattern = r'^\s*(L\d+_\d+)(\s*,\s*(L\d+_\d+))+\s*=\s*(.*)\s*$'

# 使用 match 方法查找匹配
if re.match(pattern, test_string):
	print(f"匹配: '{test_string}'")
else:
	print(f"不匹配: '{test_string}'")
