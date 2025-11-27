#> tusb_remake:doom/
# 死の宣告の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 死の宣告
scoreboard players remove @s DoomSecond 1
scoreboard players remove @s[scores={DoomSecond=..0}] Doom 1
tellraw @s[scores={DoomSecond=..0}] {"score":{"name":"*","objective":"Doom"},"color":"dark_red","bold":true}
scoreboard players set @s[scores={DoomSecond=..0}] DoomSecond 3
kill @s[scores={Doom=..0}]
tag @s[scores={Doom=..0}] remove Doom
