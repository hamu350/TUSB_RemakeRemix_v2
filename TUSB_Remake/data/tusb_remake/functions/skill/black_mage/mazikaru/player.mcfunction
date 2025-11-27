#> tusb_remake:skill/black_mage/drain/player
# ドレインで吸う側
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 


execute at @s store result score @s mazikaru if entity @e[type=#tusb_remake:mob,tag=Enemy,distance=..5]

execute if score @s mazikaru matches 1 run scoreboard players add @s MP 20
execute if score @s mazikaru matches 2 run scoreboard players add @s MP 30
execute if score @s mazikaru matches 3 run scoreboard players add @s MP 40
execute if score @s mazikaru matches 4 run scoreboard players add @s MP 50
execute if score @s mazikaru matches 5 run scoreboard players add @s MP 60
execute if score @s mazikaru matches 6 run scoreboard players add @s MP 70
execute if score @s mazikaru matches 7 run scoreboard players add @s MP 80
execute if score @s mazikaru matches 8 run scoreboard players add @s MP 90
