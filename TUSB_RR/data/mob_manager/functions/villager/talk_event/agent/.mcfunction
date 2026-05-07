#> tusb_remake:talk_event/agent/
# エージェントとの会話
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### エージェント
### 最初の会話
execute unless entity @s[tag=AgentOK] run function tusb_remake:talk_event/agent/1
### 転送の会話
execute if entity @s[tag=AgentOK] run function tusb_remake:talk_event/agent/2/
