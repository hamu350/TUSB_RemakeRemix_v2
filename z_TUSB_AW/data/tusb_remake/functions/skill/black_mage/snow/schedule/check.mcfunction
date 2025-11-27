#> tusb_remake:skill/black_mage/snow/schedule/check
### スノウの効果判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute positioned ^ ^0.5 ^ run function tusb_remake:skill/black_mage/snow/schedule/deco

execute positioned ^-1 ^ ^ as @e[dy=1,type=#tusb_remake:mob,tag=Enemy] positioned as @s positioned ^ ^ ^1 rotated as @s run tp @s ~ ~ ~ ~ ~
execute positioned ^0 ^ ^ as @e[dy=1,type=#tusb_remake:mob,tag=Enemy] positioned as @s positioned ^ ^ ^1 rotated as @s run tp @s ~ ~ ~ ~ ~
execute positioned ^1 ^ ^ as @e[dy=1,type=#tusb_remake:mob,tag=Enemy] positioned as @s positioned ^ ^ ^1 rotated as @s run tp @s ~ ~ ~ ~ ~

data modify storage tusb_remake: _ set value true
