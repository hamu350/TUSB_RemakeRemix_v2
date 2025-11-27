#> tusb_remake:skill/white_mage/heart_boost/
# ハートブーストを発動させる(401X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 2 0

execute if score @s ActivatedSkill matches 4010 run effect give @a[distance=..15] minecraft:absorption 180 1
execute if score @s ActivatedSkill matches 4011 run effect give @a[distance=..15] minecraft:absorption 180 3
execute if score @s ActivatedSkill matches 4012 run effect give @a[distance=..15] minecraft:absorption 180 5
execute if score @s ActivatedSkill matches 4013 run effect give @a[distance=..15] minecraft:absorption 180 7
execute if score @s ActivatedSkill matches 4014..4019 run effect give @a[distance=..15] minecraft:absorption 180 9

execute as @a[distance=..15] at @s run particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
