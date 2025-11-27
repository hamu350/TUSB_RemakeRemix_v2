#> tusb_remake:player/pray/show
# 祈りを捧げるを表示する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 祈り(最後の手段) ## 最初に教会に行くまで使えない
scoreboard players enable @s kill
tellraw @s [{"text":"[最終手段] ","bold":true,"color":"gray"},{"text":"祈りを捧げる","color":"dark_aqua","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger kill set 1"},"hoverEvent":{"action":"show_text","value":{"text":"/kill","color":"red"}}}]
tag @s remove Pray
