#> tusb_remake:skill/archer/wild_cooking/porkchop
# 豚肉を焼く
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run clear @s minecraft:porkchop 1
execute if score _ TUSB matches 1.. run give @s minecraft:cooked_porkchop 1
execute if score _ TUSB matches 1.. run data modify storage tusb_remake: cooked_state set value "good"

execute if score _ TUSB matches ..0 run function tusb_remake:skill/archer/wild_cooking/beef
