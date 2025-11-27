#> tusb_remake:skill/archer/wild_cooking/poisonous_potato
# 芽の生えたじゃがいもを焼く
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run clear @s minecraft:poisonous_potato 1
execute if score _ TUSB matches 1.. run give @s minecraft:spider_eye{display:{Name:'"§r毒素"'}} 1
execute if score _ TUSB matches 1.. run data modify storage tusb_remake: cooked_state set value "strange"

execute if score _ TUSB matches ..0 run function tusb_remake:skill/archer/wild_cooking/tropical_fish
