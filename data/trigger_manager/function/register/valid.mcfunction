### 任意のコマンドをトリガーとして登録する
### 既に登録されているトリガー名だった場合、コマンドを上書きする
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage trigger_manager: input.auto_enable set value true
## 上書き
$data modify storage trigger_manager: triggers[{name:"$(name)"}] set from storage trigger_manager: input
## 未登録なら追加
$execute unless data storage trigger_manager: triggers[{name:"$(name)"}] run data modify storage trigger_manager: triggers append from storage trigger_manager: input

$tellraw @s "[Trigger Manager] コマンドを$(name)として登録しました。"

## 登録した時には、トリガーのスコアボードを用意する。
$scoreboard objectives add $(name) trigger

## スコア判定用の文字列を生成する


## トリガー名のリストを取得
data modify storage trigger_manager: trigger_names set value []
data modify storage trigger_manager: trigger_names append from storage trigger_manager: triggers[].name
## スコア判定用の文字列をリセット
data modify storage trigger_manager: scores_string set value {ret:""}
data modify storage trigger_manager: scores_string.add set from storage trigger_manager: trigger_names[-1]
data remove storage trigger_manager: trigger_names[-1]

## スコア判定用の文字列を結合する
execute if data storage trigger_manager: scores_string.add run function trigger_manager:register/concat with storage trigger_manager: scores_string
## 結合結果を保存
data modify storage trigger_manager: scores_string set from storage trigger_manager: scores_string.ret
data modify storage trigger_manager: tick_args.scores_string set from storage trigger_manager: scores_string
