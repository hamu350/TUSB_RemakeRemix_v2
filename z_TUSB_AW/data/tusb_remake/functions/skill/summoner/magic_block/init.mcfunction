#> tusb_remake:skill/summoner/magic_block/init
# 魔法のブロックのチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run data get entity @s Pos[1]

### 高さが256以上なら 20tick
### 高さが192以上なら 100tick
### 高さが128以上なら 200tick
### 高さが64以上なら  300tick
### 高さが0以上なら   400tick
### 高さが-64以上なら 500tick
tp @s ~ ~ ~ ~ -88
execute if score _ TUSB matches ..255 rotated as @s run tp @s ~ ~ ~ ~ ~8
execute if score _ TUSB matches ..191 rotated as @s run tp @s ~ ~ ~ ~ ~10
execute if score _ TUSB matches ..127 rotated as @s run tp @s ~ ~ ~ ~ ~10
execute if score _ TUSB matches ..63 rotated as @s run tp @s ~ ~ ~ ~ ~10
execute if score _ TUSB matches ..-1 rotated as @s run tp @s ~ ~ ~ ~ ~10

execute if entity @s[tag=PrePetitBlack] rotated as @s run tp @s ~ ~ ~ ~ -80

tag @s remove PreMagicBlock
