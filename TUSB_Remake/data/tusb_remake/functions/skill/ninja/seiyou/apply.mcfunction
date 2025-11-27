#> tusb_remake:skill/ninja/seiyou/apply
### 跳躍発動時の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players add @s seiyou 3
scoreboard players set @s NinjaTime 3

execute if score _ ActivatedSkill matches 2260..2269 if score @s seiyou matches 31.. run scoreboard players set @s seiyou 30

playsound entity.ender_dragon.flap master @a[distance=..16] ~ ~ ~ 1 1.8 0
particle enchanted_hit ~ ~ ~ 2.0 0 2.0 0 100 force
playsound minecraft:entity.experience_orb.pickup master @a[distance=..16] ~ ~ ~ 1.0 0.75 0.0


title @s times 0 70 10
title @s subtitle {"translate":"                            %1$s Charge!","with":[{"score":{"name":"*","objective":"seiyou"}}],"color":"green","italic":true,"bold":true}
title @s title {"text":""}


effect give @s[scores={seiyou=1}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=2}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=3}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=4}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=5}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=6}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=7}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=8}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=9}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=10}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=11}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=12}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=13}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=13}] minecraft:instant_damage 3 2
effect give @s[scores={seiyou=15}] minecraft:instant_damage 3 2