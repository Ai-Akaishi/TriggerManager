### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

### 何らかのトリガーが使用状態か、未初期化状態だったら、トリガーをチェックする
$execute as @a at @s unless entity @s[scores={$(scores_string)}] run function trigger_manager:triggered/
