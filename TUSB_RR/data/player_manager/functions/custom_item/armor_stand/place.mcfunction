#> player_manager:custom_item/armor_stand/place
# 看板との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=..6,tag=SignStand] at @s run function player_manager:custom_item/armor_stand/check

advancement revoke @s only player_manager:armor_stand/place
