data modify storage score_damage: Argument set value {Damage:80.00,DamageType:"None"}
execute at @e[tag=syawa_] as @e[tag=Enemy,type=#tusb_remake:mob,distance=..10] run function score_damage:api/attack
execute as @e[tag=syawa_] at @s run function tusb_remake:skill/black_mage/syawa_/otomitame

execute at @e[tag=syawa_] if entity @e[tag=Enemy,type=#tusb_remake:mob,distance=..10] as @a[distance=..10] run function tusb_remake:skill/black_mage/syawa_/player

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/black_mage/syawa_/apply 10t
