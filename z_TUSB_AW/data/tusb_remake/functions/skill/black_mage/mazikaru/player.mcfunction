#> tusb_remake:skill/black_mage/drain/player
# ドレインで吸う側
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 


execute at @s store result score @s mazikaru if entity @e[type=#tusb_remake:mob,tag=Enemy,distance=..8,limit=10]

scoreboard players set _ TUSB 20
scoreboard players operation @s mazikaru *= _ TUSB
scoreboard players add @s mazikaru 40
scoreboard players operation @s MP += @s mazikaru

scoreboard players operation @s MP < @s MPMax

scoreboard players set _ TUSB 10
scoreboard players operation @s mazikaru /= _ TUSB
scoreboard players operation @s HealCount += @s mazikaru