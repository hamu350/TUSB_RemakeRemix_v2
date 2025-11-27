#> tusb_remake:skill/ninja/yokake/
# 夜駆を発動させる(208X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.zombie.infect master @a[distance=..16] ~ ~ ~ 1 2 0
particle explosion ~ ~1.6 ~ 0 0.1 0 0.1 30 force

execute store result score _ TUSB run time query daytime
scoreboard players remove _ TUSB 18000
execute if score _ TUSB matches ..-12000 run scoreboard players add _ TUSB 24000

effect give @s minecraft:night_vision 60 0
execute if score _ TUSB matches -9500..9500 run effect give @s minecraft:night_vision 60 1
execute if score _ TUSB matches -8500..8500 run effect give @s minecraft:absorption 60 0

execute if score _ TUSB matches -7500..7500 run effect give @s minecraft:absorption 60 1
execute if score _ TUSB matches -7500..7500 run effect give @s minecraft:haste 60 0

execute if score _ TUSB matches -6500..6500 run effect give @s minecraft:night_vision 60 2
execute if score _ TUSB matches -6500..6500 run effect give @s minecraft:haste 60 1
execute if score _ TUSB matches -6500..6500 run effect give @s minecraft:resistance 60 0

execute if score _ TUSB matches -5500..5500 run effect give @s minecraft:absorption 60 2
execute if score _ TUSB matches -5500..5500 run effect give @s minecraft:resistance 60 1

execute if score _ TUSB matches -4500..4500 run effect give @s minecraft:haste 60 2

execute if score _ TUSB matches -3500..3500 run effect give @s minecraft:night_vision 60 3
execute if score _ TUSB matches -3500..3500 run effect give @s minecraft:resistance 60 2

execute if score _ TUSB matches -2500..2500 run effect give @s minecraft:absorption 60 3

execute if score _ TUSB matches -1500..1500 run effect give @s minecraft:haste 60 3

execute if score _ TUSB matches -500..500 run effect give @s minecraft:resistance 60 3
