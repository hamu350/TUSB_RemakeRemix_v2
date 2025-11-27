#> tusb_remake:tocult_process/in_water
# トカルトコルデのいろんな処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 水の中での松明消費判定
scoreboard players set @s ItemCount -1
execute store result score @s ItemCount run clear @s minecraft:torch 50
### 松明がなければダメージ
effect give @s[scores={ItemCount=..49}] minecraft:instant_damage 1 1 true
### 松明を減らした場合、減らした分の松明を消して戻す
execute if entity @s[scores={ItemCount=1..}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lever",Count:1b,tag:{display:{Name:'{"text":"§7消えた松明"}',Lore:['"§r火が消えてしまった松明。"','"§r篝火で火を付け直せる。"']}}},Tags:[OffTorch,TypeChecked]}
execute if entity @s[scores={ItemCount=1..}] store result entity @e[dx=0,type=item,tag=OffTorch,limit=1] Item.Count byte 1 run scoreboard players get @s ItemCount

tag @s remove RemoveTorchInWater
