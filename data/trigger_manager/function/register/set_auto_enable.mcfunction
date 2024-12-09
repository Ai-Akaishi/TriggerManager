### 自動で有効化するかどうかの設定を上書きする
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

$data modify storage trigger_manager: triggers[{name:"$(name)"}] merge value {auto_enable: $(auto_enable)}
