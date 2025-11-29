#> tusb_remake:skill/black_mage/wind_wall/apply
# ウィンドウォールをかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players set @s WindWall 400
particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
tellraw @s {"text":"ウィンドウォールの効果がかかった。","color":"green","hoverEvent":{"action":"show_text","value":"一定時間、周囲の飛翔物を妨げる。"}}
