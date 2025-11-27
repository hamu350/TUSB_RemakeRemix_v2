#> tusb_remake:skill/archer/radar_vision/
# レーダーヴィジョン発動(305X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### レーダーヴィジョン状態であることを設定
tag @s add RadarVision
### 戻る時間を設定する
execute store result score @s RadarVision run time query gametime
execute if score @s ActivatedSkill matches 3050 run scoreboard players add @s RadarVision 60
execute if score @s ActivatedSkill matches 3051..3059 run scoreboard players add @s RadarVision 100

### 何かに乗っているなら降ろす
execute if predicate tusb_remake:is_riding run tp @s ~ ~0.45 ~

### 戻ってくる場所を一応表示
execute if score @s ActivatedSkill matches 3050 at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:60,WaitTime:0,Tags:[SystemEntity],CustomName:'"レーダーサイト"',CustomNameVisible:true,Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:beacon",Count:1b},Tags:[SystemEntity]}]}
execute if score @s ActivatedSkill matches 3051..3059 at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:100,WaitTime:0,Tags:[SystemEntity],CustomName:'"レーダーサイト"',CustomNameVisible:true,Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:beacon",Count:1b},Tags:[SystemEntity]}]}

### 戻る場所を記録
function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.RadarVision.Pos set from entity @s Pos
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.RadarVision.Rotation set from entity @s Rotation
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.RadarVision.Dimension set from entity @s Dimension

### 見やすくする
effect give @s minecraft:water_breathing 30 100 true
effect give @s minecraft:night_vision 30 100 true

### 演出
playsound minecraft:entity.zombie_villager.converted master @a[distance=..16] ~ ~ ~ 1 0.78 0

### スペクテイター
gamemode spectator @s
