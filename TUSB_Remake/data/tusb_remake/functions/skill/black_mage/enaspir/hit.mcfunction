#> tusb_remake:skill/black_mage/enaspir/hit
# エンアスピルの効果を発動させる
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 0.5 0
particle minecraft:enchant ~ ~1.5 ~ 0.1 0.6 0.1 4 300 force

### 与えたダメージに応じてMP回復
scoreboard players operation _ TUSB = @s DamageDealt
execute store result storage tusb_remake: _ int 0.005 run scoreboard players operation _ TUSB *= @s EnAspir
execute store result score _ TUSB run data get storage tusb_remake: _
scoreboard players add _ TUSB 5
scoreboard players operation @s MP += _ TUSB

### 最大MPで抑える
scoreboard players operation @s MP < @s MPMax

scoreboard players remove @s EnAspir 4
title @s actionbar [{"text":"⇧","color":"purple"},{"score":{"name":"_","objective": "TUSB"},"bold":true,"color":"dark_aqua"},{"text":"⇧","color":"purple"}]
execute if score @s EnAspir matches ..0 run tellraw @s {"text":"エンアスピルの効果が切れた。","color":"gold"}
execute if score @s EnAspir matches ..0 run scoreboard players reset @s EnAspir
