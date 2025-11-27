#> tusb_remake:skill/archer/fatal_shot/hit/damage
# フェイタルショット効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 演出する表示するカウントが残っているときだけ表示
execute unless data storage tusb_remake: {fatal_shot_count:0} run playsound minecraft:block.fire.extinguish master @a[distance=..32] ~ ~ ~ 2 0.6 0.1
execute unless data storage tusb_remake: {fatal_shot_count:0} run particle minecraft:witch ~ ~1 ~ 5 1 5 0.1 90 force

### カウントを減らす
execute store result storage tusb_remake: fatal_shot_count int 0.9999999999 run data get storage tusb_remake: fatal_shot_count

### 特殊効果を入れる
### 飛べなくなる
tag @s add FallDown
effect give @s minecraft:bad_omen 20 127 true
### 防御力を下げる (ダメージ5倍)
scoreboard players set @s KasapLevel 4
scoreboard players set @s KasapTimer 20
tag @s add InKasap

### ポーション効果
effect clear @s minecraft:strength
effect clear @s minecraft:fire_resistance
effect clear @s minecraft:water_breathing
effect give @s minecraft:slowness 20 19
effect give @s minecraft:weakness 20 19
