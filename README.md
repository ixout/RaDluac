A simple project for restoring and decompiling luac files from some common IoT vendors

Supports [unluac](https://sourceforge.net/projects/unluac/) and [luadec](https://github.com/viruscamp/luadec)

Since the code decompiled by unluac contains a lot of redundant code, I wrote a simple regular expression-based code optimizer that can reduce the amount of code by about 50%.(Only test for xiaomi)

[blog](https://ixout.github.io/posts/15971/)

## Usage
```
optional arguments:
  -h, --help  show this help message and exit
  -i INPUT    Input filename
  -o OUTPUT   Output filename
  -v VENDOR   The name of the target device vendor
              Supports:
              xiaomi,tplink,official
  -d          Use luadec to decompile otherwise use unluac
  -s          Keep the restored standard format luac file
  -u          Remove some redundant statements from the generated code, Only valid for unluac result(Temporarily used for testing)
```


## Thanks for

[luaAnalyzer](https://github.com/no1rr/luaAnalyzer)

[mi_lua](https://github.com/zh-explorer/mi_lua/)
