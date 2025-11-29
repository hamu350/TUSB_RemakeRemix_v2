#> tusb_remake:skill/summoner/gold_basin/summon
# 金タライ発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:light_weighted_pressure_plate"},Time:1,DropItem:false,HurtEntities:false,FallHurtMax:25,FallHurtAmount:25f,FallDistance:1f,Tags:[PreKanaTarai,Tarai]}
execute as @e[distance=0,tag=PreKanaTarai] run data merge entity @s {BlockState:{Name:"minecraft:lily_pad"},Tags:[KanaTarai,Tarai]}
particle minecraft:crit ~ ~ ~ 0.3 0.1 0.3 1 10 force
playsound block.anvil.land master @a[distance=..32] ~ ~100 ~ 0.01 0.5 0.05
