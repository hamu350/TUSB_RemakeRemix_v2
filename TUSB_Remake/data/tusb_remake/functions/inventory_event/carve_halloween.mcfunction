#> tusb_remake:inventory_event/carve_halloween
# ハロウィンヘッドをくりぬいてかぶれるようにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage player_item_tuner: condition.if set value {id:"minecraft:pumpkin",tag:{display: {Name: '{"text":"§6§lハロウィンヘッド"}'}}}
data modify storage player_item_tuner: result.merge set value {id:"minecraft:carved_pumpkin"}
function #player_item_tuner:modify/inventory
