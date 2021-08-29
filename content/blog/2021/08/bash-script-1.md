---
title: "Bash 脚本 (1)"
date: 2021-08-29
tags:
  - Bash Script
draft: false
---

## Bash 变量的默认值

在下文, `parameter` 表示一个变量.

  - `${parameter:-word}`: 用于返回默认值.
  如果变量 `parameter` 不存在或者为空, 则返回 `word`, 否则返回 `parameter` 的值.
  - `${parameter:=word}`: 用于赋予默认值.
  如果变量 `parameter` 不存在或者为空, 则将 `word` 的值赋予给 `parameter`.
  无论如何, 最后返回的都是 `parameter` 的值.
  Only variables, not positional parameters or special parameters, can be assigned in this way.
  - `${parameter:?word}`: 用于变量不存在或为空时报错.
  如果变量 `parameter` 不存在或者为空, 则给出错误信息 `./test.sh line 3: parameter: word`, 否则返回 `parameter` 的值.
  - `${parameter:+word}`: 用于使用 alternative value.
  如果变量 `parameter` 不存在或者为空, 则返回空值, 否则返回 `word` 的值.

如果 `word` 可展开, e.g. `$USER` 会展开为 `complex2liu`,
则返回值为 `word` 展开后的值. 考虑下述名为 `test.sh` 的脚本
```bash
#!/bin/bash

filename=${1:?$USER}
echo $filename
```
其中 `${1}` 称为位置参数(positional parameter),
比如 `mkdir new_dir` 中 `new_dir` 就是第 1 个位置参数.
```bash
# run ./test.sh
./test.sh: line 3: 1: complex2liu

# run ./test.sh README.md
README.md
```
如果 `word` 被省略, 即该脚本的第三行为 `filename=${1:?}`,
则会输出默认信息 `./test.sh: line 3: 1: parameter null of not set`.

## 变量为空和不存在不是一件事

以上四个例子中的冒号 `:` 的作用是自检 `parameter` 的值是否为空,
如果省略了 `:`, 则 bash 只会判断 `parameter` 是否存在, 而不会判断是否为空.
比如, 执行下述脚本
```bash
#!/bin/bash

var1=
var2=${var1-word}
```
会返回空值, 因为变量 `var1` 确实存在(虽然它为空),
如果将第四行改为 `var2=${var1:-word}`, 则就如前文所述一般返回 `word`.
