#> tusb_remake:player/food/limit
# 満腹度を制限する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if score @s FoodMax < @s Food run effect give @s minecraft:hunger 1 127 true
execute unless score @s FoodMax < @s Food run effect clear @s minecraft:hunger
execute unless score @s FoodMax < @s Food run scoreboard players reset @s FoodMax
