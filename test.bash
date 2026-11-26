#!/bin/bash
# SPDX-FileCopyrightText: 2026 Kento Someya
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目のテスト失敗
        res=1
}

res=0

### NORMAL INPUT ###
out=$(printf "1200\n800\n500\n" | ./budget_left 5000)
[ "$?" = 0 ] || ng "$LINENO"
expected=$(echo 3800.0 3000.0 2500.0 | tr ' ' '\n')
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo 30.5 19.5 | tr ' ' '\n' | ./budget_left 100)
[ "$?" = 0 ] || ng "$LINENO"
expected=$(echo 69.5 50.0 | tr ' ' '\n')
[ "${out}" = "${expected}" ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo あ | ./budget_left 5000)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./budget_left 5000)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(printf "100\n" | ./budget_left)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

