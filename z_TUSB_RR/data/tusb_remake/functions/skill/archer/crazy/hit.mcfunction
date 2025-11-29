execute as @e[tag=crazy] at @s run particle glow ~ ~ ~ 4 -1 4 0.1 300 force
execute as @e[tag=crazy] at @s run function tusb_remake:skill/archer/crazy/otomitame
data modify storage score_damage: Argument set value {Damage:30,DamageType:"None"}
execute at @e[tag=crazy] as @e[tag=Enemy,type=#tusb_remake:mob,distance=..10] run function score_damage:api/attack
execute at @e[tag=crazy] as @e[type=player,distance=..10] run tag @s add EnergySave
execute as @e[tag=crazy] as @e[type=player,distance=..10] run function tusb_remake:player/clear_bad_effect
execute at @e[tag=crazy] as @e[type=player,distance=..10] run effect give @s minecraft:haste 5 2
execute at @e[tag=crazy] as @e[type=player,distance=..10] run effect give @s regeneration 5 3
execute at @e[tag=crazy] as @e[type=player,distance=..10] run effect give @s resistance 5 2
execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/archer/crazy/hit 20t
