#> tusb_remake:talk_event/agent/1
# エージェントとの会話１
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## エージェントと話したら転送コストを計算
## コスト = (レベル - 50) ^ 2 / 5
scoreboard players operation @s AgentWarpCost = @s Level
scoreboard players remove @s AgentWarpCost 50
execute if score @s Level matches 50.. run scoreboard players set @s AgentWarpCost 0
execute store result storage tusb_remake: _ int -0.2 run scoreboard players operation @s AgentWarpCost *= @s AgentWarpCost
execute store result score @s AgentWarpCost run data get storage tusb_remake: _ -1

## 初期会話
tellraw @s {"translate":"[エージェント] 転職したいカ？職業島遠いだロ？\nあんたならエメラルド%1$s個で送ってやるヨ。どうダ？ %2$s","with":[{"score":{"name":"*","objective":"AgentWarpCost"},"color":"green","bold":true},{"text":"送っテ！","color":"aqua","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger AgentFlag set 1"}}]}

## trigger有効化
scoreboard players set @s AgentFlag 0
scoreboard players enable @s AgentFlag
