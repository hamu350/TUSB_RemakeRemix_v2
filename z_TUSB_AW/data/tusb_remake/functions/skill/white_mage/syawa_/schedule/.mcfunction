#> tusb_remake:skill/white_mage/holy/schedule/
### ホーリーが飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
execute as @e[type=snowball,tag=HolyShower] at @s run function tusb_remake:skill/white_mage/syawa_/schedule/fly
execute as @a[distance=..12] at @e[type=snowball,tag=HolyShower] run function tusb_remake:player/clear_bad_effect
execute as @a[distance=..12] at @e[type=snowball,tag=HolyShower] run effect give @s absorption 60 10 true
execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/white_mage/syawa_/schedule/ 1t
execute at @e[type=snowball,tag=HolyShower] run scoreboard players set @a[distance=..12] HealCount 10