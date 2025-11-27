#> tusb_remake:skill/ninja/tsuremai/apply
### 流し斬りがヒットした敵に効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# あまりにも強すぎるのでTLEでの連舞はナーフする

# multiの部分を0.3から0.2へ

scoreboard players add @s Tsuremai 1
scoreboard players set @s NinjaTime 2

execute if score _ ActivatedSkill matches 2212..2219 if score @s Tsuremai matches 16.. run scoreboard players set @s Tsuremai 15
execute if score _ ActivatedSkill matches 2211 if score @s Tsuremai matches 11.. run scoreboard players set @s Tsuremai 10
execute if score _ ActivatedSkill matches 2210 if score @s Tsuremai matches 6.. run scoreboard players set @s Tsuremai 5

playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 1 1.4 0
particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force

title @s times 0 30 10
title @s subtitle {"translate":"                            %1$s HIT!","with":[{"score":{"name":"*","objective":"Tsuremai"}}],"color":"red","italic":true,"bold":true}
title @s title {"text":""}

### (base + Tsuremai * 2) * (1 + Tsuremai * 0.3)
###   +2   +4   +6                    +30
### +30% +60% +90%                  +450%

attribute @s minecraft:generic.attack_damage modifier remove 6765f63f-00a6-47e7-81ec-5647ceecf0f1
attribute @s[scores={Tsuremai=1}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 2.0 add
attribute @s[scores={Tsuremai=2}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 4.0 add
attribute @s[scores={Tsuremai=3}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 6.0 add
attribute @s[scores={Tsuremai=4}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 8.0 add
attribute @s[scores={Tsuremai=5}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 10.0 add
attribute @s[scores={Tsuremai=6}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 12.0 add
attribute @s[scores={Tsuremai=7}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 14.0 add
attribute @s[scores={Tsuremai=8}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 16.0 add
attribute @s[scores={Tsuremai=9}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 18.0 add
attribute @s[scores={Tsuremai=10}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 20.0 add
attribute @s[scores={Tsuremai=11}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 22.0 add
attribute @s[scores={Tsuremai=12}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 24.0 add
attribute @s[scores={Tsuremai=13}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 27.0 add
attribute @s[scores={Tsuremai=14}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 28.0 add
attribute @s[scores={Tsuremai=15}] minecraft:generic.attack_damage modifier add 6765f63f-00a6-47e7-81ec-5647ceecf0f1 "Tsuremai" 30.0 add

attribute @s minecraft:generic.attack_damage modifier remove 25ef82d7-835d-4d2d-9f64-e919e86e97fa
attribute @s[scores={Tsuremai=1}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 0.2 multiply
attribute @s[scores={Tsuremai=2}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 0.4 multiply
attribute @s[scores={Tsuremai=3}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 0.6 multiply
attribute @s[scores={Tsuremai=4}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 0.8 multiply
attribute @s[scores={Tsuremai=5}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 1.0 multiply
attribute @s[scores={Tsuremai=6}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 1.2 multiply
attribute @s[scores={Tsuremai=7}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 1.4 multiply
attribute @s[scores={Tsuremai=8}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 1.6 multiply
attribute @s[scores={Tsuremai=9}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 1.8 multiply
attribute @s[scores={Tsuremai=10}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 2.0 multiply
attribute @s[scores={Tsuremai=11}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 2.2 multiply
attribute @s[scores={Tsuremai=12}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 2.4 multiply
attribute @s[scores={Tsuremai=13}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 2.6 multiply
attribute @s[scores={Tsuremai=14}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 2.8 multiply
attribute @s[scores={Tsuremai=15}] minecraft:generic.attack_damage modifier add 25ef82d7-835d-4d2d-9f64-e919e86e97fa "Tsuremai" 3.0 multiply
