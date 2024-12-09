### トリガーを使った時の処理
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## トリガーを１つ抜き出して、処理する
data modify storage trigger_manager: trigger set from storage trigger_manager: _[-1]
data remove storage trigger_manager: _[-1]
function trigger_manager:triggered/each with storage trigger_manager: trigger
data remove storage trigger_manager: trigger

## まだトリガーが残っていたら、繰り返し
execute if data storage trigger_manager: _[-1] run function trigger_manager:triggered/loop
