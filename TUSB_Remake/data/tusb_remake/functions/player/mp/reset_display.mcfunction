#> tusb_remake:player/mp/reset_display
# 右側のMP表示のリセット
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 今ワールドにいるプレイヤーのMPは保存
execute as @a run scoreboard players operation @s TUSB = @s MP
### 全てのMPをリセット
scoreboard players reset * MP
### 保存したMPを返却
execute as @a run scoreboard players operation @s MP = @s TUSB

tellraw @a ["",{"selector":"@s"},{"text":" によってプレイヤーのMP表示がリセットされました。","bold":true}]
