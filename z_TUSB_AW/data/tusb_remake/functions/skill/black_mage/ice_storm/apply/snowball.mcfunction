#> tusb_remake:skill/black_mage/ice_storm/apply/snowball
### 雪玉をアイスストームにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify entity @s Tags set value [IceStorm,FlyingObject,Driftable,TypeChecked]

execute if score _ ActivatedSkill matches 5200 run tag @s add IceStorm1
execute if score _ ActivatedSkill matches 5201 run tag @s add IceStorm2
execute if score _ ActivatedSkill matches 5202..5209 run tag @s add IceStorm3
