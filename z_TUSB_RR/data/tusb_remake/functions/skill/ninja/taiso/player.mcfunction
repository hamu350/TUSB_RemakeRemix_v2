#> tusb_remake:skill/black_mage/drain/player
# ドレインで吸う側
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 
execute at @e[tag=taisosinnyo] run tag @e[type=#tusb_remake:mob,tag=Enemy] add taisotarget
execute at @e[tag=taisotarget] run playsound entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 0.5 1.4 0
execute at @e[tag=taisotarget] run particle happy_villager ~ ~ ~ 0.1 10.0 0.1 0.0 50 force @a
execute at @e[tag=taisosinnyo] as @e[tag=taisosinnyo,limit=10] run scoreboard players add @s[distance=..20] HealCount 2
execute as @s as @a at @e[tag=taisosinnyo,distance=..10] run function tusb_remake:player/clear_bad_effect
data modify storage score_damage: Argument set value {Damage:45.00,DamageType:"None"}
execute as @e[tag=taisotarget,distance=..10,type=#tusb_remake:mob] run function score_damage:api/attack

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/ninja/taiso/player 10t