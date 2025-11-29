#> tusb_remake:skill/white_mage/raise/apply
# レイズをかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.2 0
particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0.1 30 force
tag @s add Raise
tag @s remove ReRaise

### お墓の表示
summon minecraft:arrow ~ ~ ~ {Silent:true,damage:0d,life:580s,Tags:[TypeChecked],Passengers:[{id:"minecraft:area_effect_cloud",Radius:0.5f,RadiusOnUse:0f,DurationOnUse:0,Duration:620,RadiusPerTick:0f,WaitTime:0,Age:0,Particle:"minecraft:end_rod",CustomName:'"✟"',CustomNameVisible:true,Tags:[RaisePoint,TypeChecked]}]}

### かかった人の通知
tellraw @a {"translate":"%1$sにレイズの効果がかかった。","color":"green","with":[{"selector":"@s"}]}

### 死んだ場所を記録
function #oh_my_dat:please
data modify storage tusb_remake: _ set value {}
data modify storage tusb_remake: _.Dimension set from entity @s Dimension
data modify storage tusb_remake: _.Pos set from entity @s Pos
data modify storage tusb_remake: _.Rotation set from entity @s Rotation
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.RaisePoint set from storage tusb_remake: _

### 復活時したときにアイテムを拾えないようにする
gamemode spectator @s
