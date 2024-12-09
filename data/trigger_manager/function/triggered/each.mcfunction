### トリガーを１つずつ処理
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

### トリガーの発動
$execute if score @s $(name) matches 0.. run $(command)

### トリガーのリセット
$execute if score @s $(name) = @s $(name) run scoreboard players enable @s $(name)
$execute if data storage trigger_manager: trigger{auto_enable:true} run scoreboard players enable @s $(name)
$scoreboard players set @s $(name) -1
