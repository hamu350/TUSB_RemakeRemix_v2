#> tusb_remake:talk_event/augur/1
# 占い師との会話１
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 初期会話
tellraw @s {"translate":"[占い師] 占いの館へようこそ。エメラルド%1$s個であなたの運勢を占います。\n占いますか？ %2$s","with":[{"text":"１","color":"green","bold":true},{"text":"はい","color":"aqua","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger AugurFlag set 1"}}]}

## trigger有効化
scoreboard players set @s AugurFlag 0
scoreboard players enable @s AugurFlag
