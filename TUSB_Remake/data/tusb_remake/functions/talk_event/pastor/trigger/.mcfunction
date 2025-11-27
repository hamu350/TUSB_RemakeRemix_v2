#> tusb_remake:talk_event/pastor/trigger/
# 牧師との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 牧師の近くでNOと答えていたら
execute if score @s PastorFlag matches 1 if entity @e[distance=..6,type=villager,tag=Pastor,limit=1] run function tusb_remake:talk_event/pastor/trigger/no
### 牧師の近くでYESと答えていたらOK
execute if score @s PastorFlag matches 2.. if entity @e[distance=..6,type=villager,tag=Pastor,limit=1] run function tusb_remake:talk_event/pastor/trigger/yes

### 遠くでYESだったらもう一度有効にするだけ
execute if score @s PastorFlag matches -2147483648..2147483647 run scoreboard players enable @s PastorFlag
execute if score @s PastorFlag matches -2147483648..2147483647 run scoreboard players set @s PastorFlag 0
