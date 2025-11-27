#> no_sleep:death
# 死んだとき、アイテムが拾えないようにスペクテイターにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

function #oh_my_dat:please
### playerGameTypeは数字で分かりにくいから使わない
execute if entity @s[gamemode=survival] run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.gamemode set value "survival"
execute if entity @s[gamemode=creative] run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.gamemode set value "creative"
execute if entity @s[gamemode=adventure] run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.gamemode set value "adventure"
execute if entity @s[gamemode=spectator] run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.gamemode set value "spectator"

gamemode spectator @s
