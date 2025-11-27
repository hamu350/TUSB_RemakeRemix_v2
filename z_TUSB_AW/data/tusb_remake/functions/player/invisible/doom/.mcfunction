#> tusb_remake:player/invisible/doom/
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

playsound item.trident.thunder master @s ~ ~ ~ 5 1 1
tellraw @s [{"translate":"%1$sは%2$sを受けた！","color":"red","with":[{"selector":"@s"},{"translate":"死の宣告","color": "#FF2A2A"}]}]
scoreboard players set @s Doom 11
tag @s add Doom
