#> time_limit:sign_stand/command/place
# 看板との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=..6,tag=TL_SignStand] at @s run function time_limit:sign_stand/command/check

advancement revoke @s only time_limit:time_limit/place_armor_stand

# 変更点: tagの名称変更とpath変更