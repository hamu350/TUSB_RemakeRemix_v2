#> tusb_remake:talk_event/
# 村人との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 村人と話したとき、近くのアイテムを渡してくれる
tp @e[distance=..5,type=minecraft:item,tag=!SystemEntity] @s

## 古いハロワだったら
# execute if entity @s[advancements={tusb_remake:talk_event={old_hellowork=true}}] run function tusb_remake:talk_event/old_hellowork/
## 古い交易島村人だったら
execute if entity @s[advancements={tusb_remake:talk_event={old_shopstaff=true}}] run function tusb_remake:talk_event/old_shopstaff/
## 古い釣り堀だったら
execute if entity @s[advancements={tusb_remake:talk_event={old_fish_pond=true}}] run function tusb_remake:talk_event/old_fish_pond/

## ハローワーク
execute if entity @s[advancements={tusb_remake:talk_event={hellowork=true}}] run function tusb_remake:talk_event/hellowork/
## 農業家
execute if entity @s[advancements={tusb_remake:talk_event={farmer=true}}] run function tusb_remake:talk_event/farmer/
## エージェント
execute if entity @s[advancements={tusb_remake:talk_event={agent=true}}] run function tusb_remake:talk_event/agent/
## 牧師
execute if entity @s[advancements={tusb_remake:talk_event={pastor=true}}] run function tusb_remake:talk_event/pastor/
## 占い師
execute if entity @s[advancements={tusb_remake:talk_event={augur=true}}] run function tusb_remake:talk_event/augur/

## 篝火
execute if entity @s[advancements={tusb_remake:talk_event={bonfire=true}}] run function tusb_remake:talk_event/bonfire/

advancement revoke @s only tusb_remake:talk_event
