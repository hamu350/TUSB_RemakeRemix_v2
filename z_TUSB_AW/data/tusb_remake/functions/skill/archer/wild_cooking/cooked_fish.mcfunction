#> tusb_remake:skill/archer/wild_cooking/cooked_fish
# 焼き魚を焼く
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run clear @s #tusb_remake:cooked_fish 1
execute if score _ TUSB matches 1.. run give @s minecraft:bone_meal{display:{Name:'"§r灰"'}} 1
execute if score _ TUSB matches 1.. run data modify storage tusb_remake: cooked_state set value "bad"

execute if score _ TUSB matches ..0 run function tusb_remake:skill/archer/wild_cooking/cooked_meat
