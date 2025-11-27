#> tusb_remake:skill/archer/wild_cooking/tropical_fish
# ニモを焼く
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run clear @s minecraft:tropical_fish 1
execute if score _ TUSB matches 1.. run give @s minecraft:orange_dye{display:{Name:'"§r天然着色料"'}} 1
execute if score _ TUSB matches 1.. run data modify storage tusb_remake: cooked_state set value "strange"

execute if score _ TUSB matches ..0 run function tusb_remake:skill/archer/wild_cooking/pufferfish
