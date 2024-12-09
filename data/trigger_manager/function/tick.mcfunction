### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## OPなしでも特定のコマンドの実行を許可したい
## コンセプト的に、基本はトリガーは0に設定され、応用的な使い方も正の整数に限ることにする

## トリガーとコマンドの紐づけの登録処理
## トリガーの削除処理

## auto_enableみたいな設定を用意して、それが設定されていないときは、最初のenableが要求されるようにする default: true

## コマンドに名前を付けて、誰でも/triggerコマンドで実行できるようにします。
## 簡単だよ

function trigger_manager:score_check with storage trigger_manager: tick_args
