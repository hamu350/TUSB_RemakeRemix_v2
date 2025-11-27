#> tusb_remake:sign_event/unseal_table/
# テーブルマウンテンのガラスの封印を解く
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

fill -105 1 42 -84 21 68 minecraft:white_stained_glass replace minecraft:barrier
particle minecraft:firework -95 11 55 8 8 9 0 1000 force
execute as @p at @s positioned -95 11 55 run playsound entity.lightning_bolt.impact master @a[distance=..32] ~ ~100 ~ 1 1.68 1
