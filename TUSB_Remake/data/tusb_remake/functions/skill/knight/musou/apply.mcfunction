#> tusb_remake:skill/knight/zan_tetsu_ken/apply
# 斬鉄剣の対象に効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run time query gametime
summon minecraft:marker ~ ~ ~ {Tags:[MusouPoint,SystemEntity,TypeChecked]}
execute as @e[distance=..0.01,type=minecraft:marker,tag=MusouPoint] store result score @s TUSB run scoreboard players add _ TUSB 10

execute as @e[distance=..30,type=#tusb_remake:mob,tag=Enemy] at @s run particle dragon_breath ~ ~1 ~ 0.6 0.8 0.6 0.5 30 force
execute as @e[distance=..30,type=#tusb_remake:mob,tag=Enemy] at @s run playsound item.totem.use master @a[distance=..16] ~ ~ ~ 1 2 0
execute as @e[distance=..30,type=#tusb_remake:mob,tag=Enemy] at @s run playsound entity.lightning_bolt.thunder master @a[distance=..16] ~ ~ ~ 1 2 0.1


schedule function tusb_remake:skill/knight/musou/slash/ 10t append
