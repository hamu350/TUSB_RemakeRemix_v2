#> tusb_remake:player/invisible/ether/3
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players add @s MP 200
scoreboard players operation @s MP < @s MPMax
