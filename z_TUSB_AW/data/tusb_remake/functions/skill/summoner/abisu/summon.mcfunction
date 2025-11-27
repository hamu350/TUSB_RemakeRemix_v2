#> tusb_remake:skill/summoner/gold_basin/summon
# 金タライ発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.
summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:obsidian"},Time:1,DropItem:false,HurtEntities:false,FallHurtMax:25,FallHurtAmount:25f,FallDistance:1f,Tags:[abisu,Tarai]}
execute as @e[distance=0,tag=abisu] run data merge entity @s {BlockState:{Name:"minecraft:lily_pad"},Tags:[abisu,Tarai]}

