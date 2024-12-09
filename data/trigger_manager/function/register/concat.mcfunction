### トリガーチェック用のスコア文字列を生成する
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 文字列を１つずつ結合
$data modify storage trigger_manager: scores_string set value {ret:"$(add)=..-1,$(ret)"}
data modify storage trigger_manager: scores_string.add set from storage trigger_manager: trigger_names[-1]
data remove storage trigger_manager: trigger_names[-1]

execute if data storage trigger_manager: scores_string.add run function trigger_manager:register/concat with storage trigger_manager: scores_string
