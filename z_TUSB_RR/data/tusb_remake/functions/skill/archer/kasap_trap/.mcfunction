#> tusb_remake:skill/archer/kasap_trap/
# ルカナントラップを召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: 持続時間を20sから15sに

### ルカナントラップを召喚
execute if score @s ActivatedSkill matches 3000 run summon minecraft:arrow ~ ~ ~ {Silent:true,damage:0d,life:900s,Tags:[TypeChecked],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:lingering_potion",Count:1b},CustomName:'"⇩DEF⇩"',CustomNameVisible:true,Tags:[Kasap,Kasap1,ArcherTrap,TypeChecked]}]}
execute if score @s ActivatedSkill matches 3001 run summon minecraft:arrow ~ ~ ~ {Silent:true,damage:0d,life:900s,Tags:[TypeChecked],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:lingering_potion",Count:1b},CustomName:'"⇩⇩DEF⇩⇩"',CustomNameVisible:true,Tags:[Kasap,Kasap2,ArcherTrap,TypeChecked]}]}
execute if score @s ActivatedSkill matches 3002..3009 run summon minecraft:arrow ~ ~ ~ {Silent:true,damage:0d,life:900s,Tags:[TypeChecked],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:lingering_potion",Count:1b},CustomName:'"⇩⇩⇩DEF⇩⇩⇩"',CustomNameVisible:true,Tags:[Kasap,Kasap3,ArcherTrap,TypeChecked]}]}

### ルカナントラップのレベルを設定
scoreboard players set @e[distance=..1,tag=Kasap1] KasapLevel 1
scoreboard players set @e[distance=..1,tag=Kasap2] KasapLevel 2
scoreboard players set @e[distance=..1,tag=Kasap3] KasapLevel 3

### ルカナントラップの判定を有効化
function tusb_remake:skill/archer/kasap_trap/schedule/
