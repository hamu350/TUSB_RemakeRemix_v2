#> tusb_remake:player/pick_exp/default/get
# 経験値を得られる人がいる場合
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

scoreboard players operation * ExpToLevel -= @s ItemCount
title @a actionbar {"translate":"+ %1$sEXP","color":"yellow","with":[{"score":{"name":"@s","objective":"ItemCount"},"color":"white","bold":true}]}

### 経験値を取得できた人から、経験値取得音を鳴らします
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.3 2
