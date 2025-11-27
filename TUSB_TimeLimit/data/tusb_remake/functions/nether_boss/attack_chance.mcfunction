#> tusb_remake:nether_boss/attack_chance
# ネザーボスもアタックチャーンス！！！
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as 0-0-1-0-4 at @s positioned ~ ~-30 ~74 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..80] ~ 0 ~ 0.1 0.7 1
## ボスのカウントをリセットするよ！
## 1 -> ............................. ->  46
execute store result storage tusb_remake: nether_boss_count int 1 if entity @e[tag=NetherBossSpawner,name="§c⬛"]
execute if data storage tusb_remake: {nether_boss_count:0} run data modify storage tusb_remake: nether_boss_count set value 1

#* ネザーボス攻撃
execute as 0-0-1-0-4 at @s positioned ~ ~-30 ~74 if entity @p[distance=..32] run function tusb_remake:nether_boss/fire_breath/
execute as 0-0-1-0-4 at @s positioned ~-21 ~-10 ~22 if entity @p[dx=53,dy=5,dz=31] run function tusb_remake:nether_boss/lightning_bolt/

### 右目からのビームを出すかどうかチェック
data modify storage tusb_remake: _ set value false
execute as 0-0-1-0-4 at @s positioned ~ ~-30 ~74 as @p[distance=29..,dx=-50,dy=30,dz=-50] at @s run data modify storage tusb_remake: _ set value true
execute as 0-0-1-0-4 at @s positioned ~ ~-30 ~74 run execute as @p[distance=29..,dx=-50,dy=30,dz=50] at @s run data modify storage tusb_remake: _ set value true
execute if data storage tusb_remake: {_:true} run function tusb_remake:nether_boss/right_beam/
### 左目からのビームを出すかどうかチェック
data modify storage tusb_remake: _ set value false
execute as 0-0-1-0-4 at @s positioned ~ ~-30 ~74 as @p[distance=29..,dx=50,dy=30,dz=-50] at @s run data modify storage tusb_remake: _ set value true
execute as 0-0-1-0-4 at @s positioned ~ ~-30 ~74 run execute as @p[distance=29..,dx=50,dy=30,dz=50] at @s run data modify storage tusb_remake: _ set value true
execute if data storage tusb_remake: {_:true} run function tusb_remake:nether_boss/left_beam/
