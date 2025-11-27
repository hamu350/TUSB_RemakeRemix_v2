#> tusb_remake:tocult_process/out_of_water
# トカルトコルデのいろんな処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 水の外での松明消費判定
scoreboard players set @s ItemCount -1
execute store result score @s ItemCount run clear @s minecraft:torch 1
### 松明がなければダメージ
effect give @s[scores={ItemCount=..0}] minecraft:instant_damage 1 1 true
### 松明を減らした場合、減らした分の松明を消して戻す
execute if entity @s[scores={ItemCount=1..}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lever",Count:1b,tag:{display:{Name:'{"text":"§7消えた松明"}',Lore:['"§r火が消えてしまった松明。"','"§r篝火で火を付け直せる。"']}}},Tags:[OffTorch,TypeChecked]}
### 松明が残っていた場合は次の判定をスキップ
tag @s[scores={ItemCount=1..}] add SaveTorch
