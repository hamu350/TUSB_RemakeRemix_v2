#> tusb_remake:skill/ninja/choyaku/jump
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.ender_dragon.flap master @a[distance=..16] ~ ~ ~ 8 0.8 0
particle explosion ~ ~ ~ 2.0 0 2.0 0 30 force

execute if score @s Choyaku matches 2..7 run data modify storage score_damage: Argument set value {Damage:15.00,DamageType:"Projectile"}
execute if score @s Choyaku matches 8..12 run data modify storage score_damage: Argument set value {Damage:35.00,DamageType:"Projectile"}
execute if score @s Choyaku matches 13.. run data modify storage score_damage: Argument set value {Damage:65.00,DamageType:"Projectile"}

execute if score @s Choyaku matches 2..7 as @e[distance=..3,type=#tusb_remake:mob,tag=Enemy] run function score_damage:api/attack
execute if score @s Choyaku matches 8..12 as @e[distance=..6,type=#tusb_remake:mob,tag=Enemy] run function score_damage:api/attack
execute if score @s Choyaku matches 13.. as @e[distance=..9,type=#tusb_remake:mob,tag=Enemy] run function score_damage:api/attack

execute if entity @e[type=#tusb_remake:living,distance=..9] run scoreboard players add @s HealCount 4