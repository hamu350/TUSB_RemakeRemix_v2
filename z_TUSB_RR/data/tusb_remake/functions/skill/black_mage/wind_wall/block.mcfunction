#> tusb_remake:skill/black_mage/wind_wall/block
# ウィンドウォールをチェックします
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data merge entity @s {Motion:[0d,-0.1d,0d]}
# summon minecraft:armor_stand ~ ~ ~ {Invisible:true,NoGravity:true,Invulnerable:true,Tags:[SystemEntity,Garbage,TypeChecked]}
tag @s remove DriftableA
tag @s remove Driftable
