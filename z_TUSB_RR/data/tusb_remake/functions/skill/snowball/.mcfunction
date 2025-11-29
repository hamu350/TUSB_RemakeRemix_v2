#> tusb_remake:skill/snowball/
# 雪玉を使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @s[scores={CurrentMode=2200..2209}] run function tusb_remake:skill/ninja/suriken/throw
execute as @s[scores={CurrentMode=2230..2239}] run function tusb_remake:skill/ninja/isukumi/throw

execute as @s[scores={CurrentMode=4210..4219}] run function tusb_remake:skill/white_mage/dia/throw
execute as @s[scores={CurrentMode=4220..4229}] run function tusb_remake:skill/white_mage/flower_gift/throw
execute as @s[scores={CurrentMode=4230..4239}] run function tusb_remake:skill/white_mage/holy/throw
execute as @s[scores={CurrentMode=4270..4279}] run function tusb_remake:skill/white_mage/ignition/throw

execute as @s[scores={CurrentMode=5200..5209}] run function tusb_remake:skill/black_mage/ice_storm/throw
execute as @s[scores={CurrentMode=5210..5219}] run function tusb_remake:skill/black_mage/cross_fire/throw

scoreboard players reset @s UseSnowball
