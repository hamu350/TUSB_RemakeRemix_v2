#> tusb_remake:talk_event/agent/trigger/
# エージェントとの会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### エージェントの近くでYESと答えていたらOK
execute if entity @e[distance=..6,type=villager,tag=Agent,limit=1] run function tusb_remake:talk_event/agent/trigger/yes

### 遠くでYESだったらもう一度有効にするだけ
execute if score @s AgentFlag matches -2147483648..2147483647 run scoreboard players enable @s AgentFlag
execute if score @s AgentFlag matches -2147483648..2147483647 run scoreboard players set @s AgentFlag 0
