#> tusb_remake:talk_event/agent/trigger/yes
# エージェントとの会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 近くでYESだったら支払い
scoreboard players operation _ TUSB = @s AgentWarpCost
function tusb_remake:talk_event/pay/

## お金が足りなかったら
execute unless data storage tusb_remake: {paid:true} run tellraw @s {"text":"[エージェント] エメラルドが足りないナ。"}
## ワープコスト足りてたらお支払い
execute if data storage tusb_remake: {paid:true} run tellraw @s {"text":"[エージェント] 代金は頂いタ。もう１度アイテムを持たずに話しかけてくレ。"}
### ワープ準備完了
execute if data storage tusb_remake: {paid:true} run tag @s add AgentOK

scoreboard players reset @s AgentFlag
