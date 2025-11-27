#> tusb_remake:armor_stand/place
# 看板との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=..6,tag=SignStand] at @s run function tusb_remake:armor_stand/check

advancement revoke @s only tusb_remake:armor_stand/place
