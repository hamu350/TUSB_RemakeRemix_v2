#> tusb_remake:test
#
### Copyright © 2022 赤石愛

## X軸上にある辺からのチェックのための向き
# execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 positioned 0.0 ~ ~ facing 0.0 0.0 0.0 positioned 

# execute as 0-0-ff-0-ff
execute anchored eyes positioned ^ ^ ^ facing entity 0-0-ff-0-ff feet positioned ^ ^ ^4 rotated as 0-0-ff-0-ff positioned ^ ^3 ^ unless entity @s[distance=..5]


# プレイヤーのZ軸と垂直な向き
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 positioned ~ ~ 0.0 facing 0.0 0.0 0.0 as 0-0-1-0-1 positioned as @s in minecraft:overworld run tp @s ~ ~ ~ ~ ~

# 検査したいZ軸に移動してから
execute as AiAkaishi at @s positioned -13 2 23 align xyz positioned ~ ~ ~1 positioned ~ ~ 0.0 facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 positioned ~ ~ 0.0 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^3 ^ rotated as 0-0-1-0-1 positioned ^ ^ ^4 if entity @s[distance=..5] run title @s actionbar "OK!!"

execute as AiAkaishi at @s positioned -13 2 23 align xyz positioned ~1 ~ ~ positioned ~ ~ 0.0 facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 positioned ~ ~ 0.0 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^-3 ^ rotated as 0-0-1-0-1 positioned ^ ^ ^4 if entity @s[distance=..5] run title @s actionbar "OK!!!!"


execute as AiAkaishi at @s positioned -13 2 23 align xyz positioned ~ ~ ~1 positioned ~ ~ 0.0 facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 positioned ~ ~ 0.0 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^3 positioned ~4 ~ ~ if entity @s[distance=..5] run title @s actionbar "OK!!"

