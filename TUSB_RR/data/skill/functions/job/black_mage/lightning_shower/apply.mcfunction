#> skill:job/black_mage/lightning_shower/apply

data modify storage score_damage: Argument set value {Damage:80.00,DamageType:"None"}
execute at @e[tag=shower] as @e[tag=Enemy,type=#lib:mob,distance=..10] run function skill:job/black_mage/lightning_shower/damage
execute as @e[tag=shower] at @s run function skill:job/black_mage/lightning_shower/vfx

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function skill:job/black_mage/lightning_shower/apply 10t
