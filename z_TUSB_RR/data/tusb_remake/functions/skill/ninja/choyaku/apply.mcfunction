#> tusb_remake:skill/ninja/choyaku/apply
### 跳躍発動時の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players add @s Choyaku 1
scoreboard players set @s NinjaTime 3

execute if score _ ActivatedSkill matches 2222..2229 if score @s Choyaku matches 16.. run scoreboard players set @s Choyaku 15
execute if score _ ActivatedSkill matches 2221 if score @s Choyaku matches 11.. run scoreboard players set @s Choyaku 10
execute if score _ ActivatedSkill matches 2220 if score @s Choyaku matches 6.. run scoreboard players set @s Choyaku 5

playsound entity.ender_dragon.flap master @a[distance=..16] ~ ~ ~ 1 1.8 0
particle white_ash ~ ~ ~ 0.05 0.2 0.05 0 100

title @s times 0 70 10
title @s subtitle {"translate":"                            %1$s Pyon!","with":[{"score":{"name":"*","objective":"Choyaku"}}],"color":"aqua","italic":true,"bold":true}
title @s title {"text":""}

effect give @s[scores={Choyaku=1}] minecraft:jump_boost 3 0
effect give @s[scores={Choyaku=2}] minecraft:jump_boost 3 1
effect give @s[scores={Choyaku=3}] minecraft:jump_boost 3 2
effect give @s[scores={Choyaku=4}] minecraft:jump_boost 3 3
effect give @s[scores={Choyaku=5}] minecraft:jump_boost 3 4
effect give @s[scores={Choyaku=6}] minecraft:jump_boost 4 5
effect give @s[scores={Choyaku=7}] minecraft:jump_boost 4 6
effect give @s[scores={Choyaku=8}] minecraft:jump_boost 4 7
effect give @s[scores={Choyaku=9}] minecraft:jump_boost 4 8
effect give @s[scores={Choyaku=10}] minecraft:jump_boost 4 9
effect give @s[scores={Choyaku=11}] minecraft:jump_boost 5 10
effect give @s[scores={Choyaku=12}] minecraft:jump_boost 5 11
effect give @s[scores={Choyaku=13}] minecraft:jump_boost 5 12
effect give @s[scores={Choyaku=14}] minecraft:jump_boost 5 13
effect give @s[scores={Choyaku=15}] minecraft:jump_boost 5 14
