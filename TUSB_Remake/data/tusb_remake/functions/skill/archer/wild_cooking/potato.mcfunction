#> tusb_remake:skill/archer/wild_cooking/potato
# じゃがいもを焼く
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run clear @s minecraft:potato 1
execute if score _ TUSB matches 1.. run give @s minecraft:baked_potato 1
execute if score _ TUSB matches 1.. run data modify storage tusb_remake: cooked_state set value "good"

execute if score _ TUSB matches ..0 run function tusb_remake:skill/archer/wild_cooking/cod
