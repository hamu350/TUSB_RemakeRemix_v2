#> tusb_remake:player/invisible/doom/clear
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

playsound block.beacon.power_select master @s ~ ~ ~ 5 1.1 1
tellraw @s [{"translate":"%1$sは%2$sから逃れた！","color":"green","with":[{"selector":"@s"},{"translate":"死の宣告","color": "#FF2A2A"}]}]
tag @s remove Doom
