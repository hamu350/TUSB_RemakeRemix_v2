#> tusb_remake:tocult_process/out_of_water
# トカルトコルデのいろんな処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 水の外での松明消費判定
scoreboard players set @s ItemCount -1
execute store result score @s ItemCount run clear @s minecraft:torch 1
### 松明がなければダメージ
data modify storage score_damage: Argument set value {Damage:0,EPF:0,BypassArmor:true,BypassResistance:true,Type:"None",DisableParticle:true}
execute store result storage score_damage: Argument.Damage double 0.05 run data get entity @s Health
execute if score @s ItemCount matches ..0 if entity @s[gamemode=!creative,gamemode=!spectator] run function score_damage:api/attack
execute if score @s ItemCount matches ..0 if entity @s[gamemode=!creative,gamemode=!spectator] run playsound minecraft:entity.player.hurt_freeze player @a[distance=..16] ~ ~ ~ 0.5 1
### 松明を減らした場合、減らした分の松明を消して戻す
execute if entity @s[scores={ItemCount=1..}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lever",Count:1b,tag:{display:{Name:'{"text":"§7消えた松明"}',Lore:['"§r火が消えてしまった松明。"','"§r篝火で火を付け直せる。"']}}},Tags:[OffTorch,TypeChecked]}
### 松明が残っていた場合は次の判定をスキップ
tag @s[scores={ItemCount=1..}] add SaveTorch
