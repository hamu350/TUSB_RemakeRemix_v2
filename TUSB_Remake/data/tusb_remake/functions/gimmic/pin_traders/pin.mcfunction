#> tusb_remake:gimmic/pin_traders/pin
# テーブルマウンテンの商人を貼り付ける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tp @s ~ ~ ~ ~ ~
# attribute @s generic.movement_speed modifier add 2ca8a380-863f-4e78-9baa-614af0ff0155 "no_speed" 0 multiply
effect clear @s levitation
effect give @s minecraft:slowness 1000000 10 true
