#> tusb_remake:skill/white_mage/dia/schedule/
### ディアが飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
execute as @e[type=snowball,tag=Dia] at @s run function tusb_remake:skill/white_mage/dia/schedule/fly

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/white_mage/dia/schedule/ 1t
