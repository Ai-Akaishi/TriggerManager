### トリガーを使った時の処理
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 管理しているトリガーの情報をコピーする
data modify storage trigger_manager: _ set from storage trigger_manager: triggers

## １つずつ処理する
execute if data storage trigger_manager: _[-1] run function trigger_manager:triggered/loop
