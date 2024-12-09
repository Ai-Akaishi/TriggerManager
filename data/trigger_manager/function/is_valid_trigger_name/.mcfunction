# 使えるトリガー名かどうか判定する。
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result storage trigger_manager: _ byte 1 run function trigger_manager:is_valid_trigger_name/check with storage trigger_manager: input
return run execute if data storage trigger_manager: {_:true}
