#> time_limit:player/pick_exp/default/get
# 経験値取得処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### RR変更

# 取得量×(全体の経験値量÷自分の総経験値量)
scoreboard players operation $Global TotalXp += @s ItemCount
scoreboard players operation _ ItemCount = @s ItemCount
execute as @a[scores={Job=1..}] at @s run function tusb_remake:player/pick_exp/each_player

### 経験値を取得できた人から、経験値取得音を鳴らします
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.3 2
