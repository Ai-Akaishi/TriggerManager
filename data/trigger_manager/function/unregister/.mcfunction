### トリガーの登録を解除する
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 未登録なら、未登録メッセージ
$execute unless data storage trigger_manager: triggers[{name:"$(name)"}] run tellraw @s "[Trigger Manager] $(name)は登録されていません。"
## 登録済みなら、登録削除とメッセージ
$execute if data storage trigger_manager: triggers[{name:"$(name)"}] run tellraw @s "[Trigger Manager] $(name)を削除しました。"
$execute if data storage trigger_manager: triggers[{name:"$(name)"}] run data remove storage trigger_manager: triggers[{name:"$(name)"}]

## 解除した時には、トリガーのスコアボードを削除する。
$scoreboard players reset * $(name)
$scoreboard objectives remove $(name)
