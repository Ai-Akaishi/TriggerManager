### 任意のコマンドをトリガーとして登録する処理
### 既に登録されているトリガー名だった場合、コマンドを上書きする
### 使えないトリガー名だった場合、エラーにする
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

$data modify storage trigger_manager: input set value {name:"$(name)", command:'$(command)', auto_enable:true}
execute unless function trigger_manager:is_valid_trigger_name/ run tellraw @s "[Trigger Manager] 不正なトリガー名です。半角英数字と、記号「._-」のみ使えます。"
execute if function trigger_manager:is_valid_trigger_name/ run function trigger_manager:register/valid with storage trigger_manager: input
