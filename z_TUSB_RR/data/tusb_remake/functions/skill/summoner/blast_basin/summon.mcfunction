#> tusb_remake:skill/summoner/blast_basin/summon
# きらきらタライ発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:snowball ~ ~ ~ {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:chorus_flower"},Time:1,DropItem:false,HurtEntities:false,FallHurtMax:25,FallHurtAmount:25f,FallDistance:1f,Tags:[PreKiraTnt,Tarai]}]}
execute as @e[distance=..1,tag=PreKiraTnt] run data merge entity @s {BlockState:{Name:"minecraft:lily_pad"},Tags:[KiraTnt,Tarai]}
