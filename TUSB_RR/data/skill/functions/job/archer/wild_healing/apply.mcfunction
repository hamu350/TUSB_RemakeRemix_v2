#> skill:job_skill/archer/wild_healing/apply
### ワイルドヒーリングの発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.9 0
particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0 30 force

### 満腹度の変化を取得
scoreboard players operation _ TUSB = @s FoodChanging
scoreboard players operation _ TUSB -= @s Food

### リメイク：レベル１の回復量を1.5倍
scoreboard players operation @s HealCount += _ TUSB
scoreboard players operation @s HealCount += _ TUSB
scoreboard players operation @s HealCount += _ TUSB

### レベル２なら状態異常回復
execute if score @s CurrentMode matches 3221..3229 run function player_manager:effect/clear_bad_effect
### リメイク：レベル２だったら追加でリジェネレーション 💗８つ
execute if score @s CurrentMode matches 3221..3229 run effect give @s regeneration 20 1
