#> tusb_remake:talk_event/augur/trigger/yes
# 占い師との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 近くでYESだったら支払い
scoreboard players set _ TUSB 1
function tusb_remake:talk_event/pay/

## お金が足りなかったら
execute unless data storage tusb_remake: {paid:true} run tellraw @s {"text":"[占い師] ふむむ……。金運に陰りが見られます。羊狩りがオススメです。"}
## 占いコスト足りてたらお支払い
execute if data storage tusb_remake: {paid:true} run function tusb_remake:talk_event/augur/trigger/tell

scoreboard players reset @s AgentFlag
