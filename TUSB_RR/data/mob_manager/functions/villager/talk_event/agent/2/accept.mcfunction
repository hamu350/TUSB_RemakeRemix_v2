#> tusb_remake:talk_event/agent/2/accept
# エージェントとの会話２
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @s remove AgentOK

## もし転送するとき、モードスキルが設定されていたら解除する
tellraw @s[scores={CurrentMode=1..}] {"text":"モードスキルが解除された。","color":"gray"}
scoreboard players set @s ModeState 0
scoreboard players set @s CurrentMode 0
scoreboard players set @s CurrentModeCost 0

## もし転送時にリレイズがかかっていたら解除する
tellraw @s[tag=ReRaise] {"text":"リレイズの効果が切れた。","color":"gold"}
tag @s remove ReRaise

## 転送メッセージ
tellraw @s {"text":"[エージェント] それじゃあ送ろウ。達者でナ。"}
give @s minecraft:white_wool 16

## 職業島にTP
execute in minecraft:overworld run tp @s -1786 113 -137 -90 0
execute if data storage tusb_remake: settings{toculting:1b} run give @s torch 64
