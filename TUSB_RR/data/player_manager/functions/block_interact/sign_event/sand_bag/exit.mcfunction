#> tusb_remake:sign_event/sand_bag/exit
# スキル設定場の訓練場の入り口の看板
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run particle portal ~ ~1 ~ 0.2 1 0.2 0.001 100 force
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..30] ~ ~ ~ 8 0.6 0
execute at @s run tp @s ~ ~-1.5 ~
# tp @p ~ ~1.5 ~6
kill @e[tag=SandBag]
