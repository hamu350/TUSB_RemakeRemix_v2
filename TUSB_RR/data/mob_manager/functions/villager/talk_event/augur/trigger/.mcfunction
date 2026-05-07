#> tusb_remake:talk_event/augur/trigger/
# 占い師との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 占い師の近くでYESと答えていたらOK
execute if entity @e[distance=..6,type=villager,tag=Augur,limit=1] run function tusb_remake:talk_event/augur/trigger/yes

### 遠くでYESだったらもう一度有効にするだけ
execute if score @s AugurFlag matches -2147483648..2147483647 run scoreboard players enable @s AugurFlag
execute if score @s AugurFlag matches -2147483648..2147483647 run scoreboard players set @s AugurFlag 0
