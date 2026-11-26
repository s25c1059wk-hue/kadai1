# budget_left

![test](https://github.com/s25c1059wk-hue/kadai1/actions/workflows/test.yml/badge.svg)

引数で指定した初期予算から、標準入力で1行ずつ渡される出費額を順に差し引き、各時点の残り予算を標準出力へ出力するコマンドです。

## インストール方法

```bash
$ git clone git@github.com:s25c1059wk-hue/kadai1.git

$cd kadai1$ chmod +x budget_left
```

## 使い方

引数に初期予算を指定し、標準入力から出費額を1行ずつ渡します。

```bash
$ printf "1200\n800\n500\n" | ./budget_left 5000
3800.0
3000.0
2500.0
```

## 必要なソフトウェア

- Python
  - テスト済みバージョン: 3.10〜3.14

## テスト環境

- Ubuntu 24.04 LTS

## ライセンス

- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- © 2026 Kento Someya
