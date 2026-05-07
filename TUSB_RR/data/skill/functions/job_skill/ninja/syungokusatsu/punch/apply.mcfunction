#> skill:job_skill/ninja/Syungoku/punch/apply
### 流し斬りがヒットした敵に効果をかける

# あまりにも強すぎるのでTLEでの連舞はナーフする

# multiの部分を0.3から0.2へ

scoreboard players add @s Syungoku 1
scoreboard players set @s NinjaTime 2

execute if score _ ActivatedSkill matches 2270..2279 if score @s Syungoku matches 6.. run scoreboard players set @s Syungoku 5

playsound minecraft:item.totem.use master @a[distance=..16] ~ ~ ~ 1 2 0
particle minecraft:lava ~ ~1 ~ 5 5 5 2 150 force
particle minecraft:flame ~ ~1 ~ 5 5 5 2 100 force

title @s times 0 30 10
title @s subtitle {"translate":"                            %1$s HIT!","with":[{"score":{"name":"@s","objective":"Syungoku"}}],"color":"red","italic":true,"bold":true}
title @s title {"text":""}

### (base + Syungoku * 2) * (1 + Syungoku * 0.3)
###   +2   +4   +6                    +30
### +30% +60% +90%                  +450%

attribute @s minecraft:generic.attack_damage modifier remove 6765f63f-00a6-47e7-81ec-5647ceecf0f1
attribute @s[scores={Syungoku=1}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Syungoku" 50.0 add
attribute @s[scores={Syungoku=2}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Syungoku" 80.0 add
attribute @s[scores={Syungoku=3}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Syungoku" 100.0 add
attribute @s[scores={Syungoku=4}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Syungoku" 150.0 add
attribute @s[scores={Syungoku=5}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Syungoku" 200.0 add

execute if score @s Syungoku matches 1 run data modify storage score_damage: Argument set value {Damage:100.00,DamageType:"Projectile"}
execute if score @s Syungoku matches 2 run data modify storage score_damage: Argument set value {Damage:150.00,DamageType:"Projectile"}
execute if score @s Syungoku matches 3 run data modify storage score_damage: Argument set value {Damage:200.00,DamageType:"Projectile"}
execute if score @s Syungoku matches 4 run data modify storage score_damage: Argument set value {Damage:250.00,DamageType:"Projectile"}
execute if score @s Syungoku matches 5 run data modify storage score_damage: Argument set value {Damage:300.00,DamageType:"Projectile"}

execute if score @s Syungoku matches 1 as @e[distance=..15,type=#lib:mob,tag=Enemy] run function score_damage:api/attack
execute if score @s Syungoku matches 2 as @e[distance=..15,type=#lib:mob,tag=Enemy] run function score_damage:api/attack
execute if score @s Syungoku matches 3 as @e[distance=..15,type=#lib:mob,tag=Enemy] run function score_damage:api/attack
execute if score @s Syungoku matches 4 as @e[distance=..15,type=#lib:mob,tag=Enemy] run function score_damage:api/attack
execute if score @s Syungoku matches 5 as @e[distance=..15,type=#lib:mob,tag=Enemy] run function score_damage:api/attack

