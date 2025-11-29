#> tusb_remake:skill/white_mage/quick/
# クイックを発動させる(403X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound block.anvil.use master @a[distance=..16] ~ ~ ~ 1 2 0

execute if score @s ActivatedSkill matches 4030 run effect give @a[distance=..15] minecraft:haste 30 1
execute if score @s ActivatedSkill matches 4031..4039 run effect give @a[distance=..15] minecraft:haste 30 3

execute as @a[distance=..15] at @s run particle crit ~ ~1 ~ 0.5 0.5 0.5 0.5 30 force