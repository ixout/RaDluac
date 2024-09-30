import re

def optimize_lua_code(lua_code):
    # 正则表达式用于匹配冗余赋值语句
    pattern = re.compile(r'(\w+)\s*=\s*(\w+)\n\s*\1\s*=\s*\1\.(\w+)')

    # 使用正则表达式替换冗余代码
    optimized_code = re.sub(pattern, r'\1 = \2.\3', lua_code)
    
    return optimized_code

# 示例 Lua 代码
lua_code = '''
L3_2 = L0_1
L2_1 = L0_1
L3_2 = L3_2.formvalue
L4_2 = L3_2(L2_2)
'''

# 优化代码
optimized_code = optimize_lua_code(lua_code)
print("优化后的代码:\n", optimized_code)

