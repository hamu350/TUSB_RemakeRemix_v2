#> player_manager:job/level_up
# レベルアップ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### レベルが100以下の場合だけレベルアップ
scoreboard players add @s[scores={Level=..99}] Level 1
### 最大MPはレベルに関わらずあがる
scoreboard players add @s MPMax 1
### 最大500
scoreboard players set @s[scores={MPMax=500..}] MPMax 500

### MPを回復
scoreboard players operation @s MP = @s MPMax

### 最大体力計算 = min(MPMax / 8, 50)
execute store result storage tusb_remake: _ int 0.125 run scoreboard players get @s MPMax
execute store result score @s HPMax run data get storage tusb_remake: _
scoreboard players set @s[scores={HPMax=51..}] HPMax 50

### MP回復間隔 = 100 - Level 
scoreboard players set @s CoolTickSpan -100
scoreboard players operation @s CoolTickSpan += @s Level
execute if score @s CoolTickSpan matches -50.. run scoreboard players set @s CoolTickSpan -50
### MP回復量 = MPMax / 20
execute store result storage tusb_remake: _ int 0.05 run scoreboard players get @s MPMax
execute store result score @s MPIncrement run data get storage tusb_remake: _

### レベルアップの演出
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 2 0.7 0
particle minecraft:happy_villager ~ ~ ~ 1 2 1 0.001 100 normal
summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{}},Tags:[LevelUpFirework]}

### レベルアップ表示
title @s times 5 100 20
title @s subtitle [{"text":"現在のレベル : ","italic":true},{"score":{"name":"*","objective":"Level"},"bold":true,"italic":false}]
title @s title {"text":"LEVEL UP ！","color":"green","bold":true}

### レベル49までと、レベル50になりたての場合、新しいスキル取得メッセージを表示
execute if entity @s[scores={Level=1..100,NextExp=..499}] run function skill:set_display/learn/
execute if entity @s[scores={Level=100,NextExp=..499}] run scoreboard players add @s ExpReduce 1
### 次の経験値の設定
function player_manager:health/set_max
effect give @s instant_health 1 6 true
scoreboard players operation @s NextExp = @s Level
execute store result score _ TUSB run data get storage tusb_remake: Const.ExpMul
scoreboard players operation @s NextExp *= _ TUSB
execute if entity @s[scores={Level=1..99}] unless score @s ExpReduce matches 6.. run function player_manager:job/level_up/each_player
scoreboard players operation @s ExpToLevel += @s NextExp
execute as @a if score @s ExpToLevel matches 500.. run scoreboard players set @s ExpToLevel 500
