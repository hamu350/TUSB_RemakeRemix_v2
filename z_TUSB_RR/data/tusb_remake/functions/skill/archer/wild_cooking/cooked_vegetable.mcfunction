#> tusb_remake:skill/archer/wild_cooking/cooked_vegetable
# ベークドポテトを焼く
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### リメイク：イカスミ→木炭
execute store result score _ TUSB run clear @s #tusb_remake:cooked_vegetable 1
execute if score _ TUSB matches 1.. run give @s minecraft:charcoal{display:{Name:'"§r焦がした芋"'}} 1
execute if score _ TUSB matches 1.. run data modify storage tusb_remake: cooked_state set value "bad"

execute if score _ TUSB matches ..0 run function tusb_remake:skill/archer/wild_cooking/cooked_fish
