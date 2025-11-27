#> tusb_remake:doom/extreme_doom/3

# 死の宣告の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 死の宣告
scoreboard players remove @s DoomSecond 1
scoreboard players remove @s[scores={DoomSecond=..0}] Doom 1
title @s[scores={DoomSecond=..0,Doom=10..}] actionbar [{"text":"☠ ","color":"#c60000","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"#fe144f","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"score":{"name":"*","objective":"Doom"},"color":"#fe144f","bold":false,"italic":false},{"text":" >","color":"green","bold":true,"italic":false},{"text":" ☠","color":"#c60000","italic":false}]
title @s[scores={DoomSecond=..0,Doom=0..9}] actionbar [{"text":"☠ ","color":"#c60000","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"#fe144f","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"text":"0","color":"#fe144f","bold":false,"italic":false},{"score":{"name":"*","objective":"Doom"},"color":"#fe144f","bold":false,"italic":false},{"text":" >","color":"green","bold":true,"italic":false},{"text":" ☠","color":"#c60000","italic":false}]
playsound block.comparator.click master @s[scores={DoomSecond=..0,Doom=4..10}] ~ ~ ~ 1 1 1
playsound minecraft:block.conduit.deactivate master @s[scores={DoomSecond=..0,Doom=0..3}] ~ ~ ~ 1 0.15 0.5
playsound minecraft:entity.elder_guardian.curse master @s[scores={DoomSecond=..0,Doom=0..3}] ~ ~ ~ 1 1.5 0.5
playsound minecraft:item.shield.break master @s[scores={DoomSecond=..0,Doom=0..3}] ~ ~ ~ 1 0 0.5
scoreboard players set @s[scores={DoomSecond=..0}] DoomSecond 1
tag @s[scores={Doom=..0}] remove Doom
execute if score @s Doom matches ..0 run function tusb_remake:doom/death

# 変更点 doomsecondの値変更(3秒ごとが1秒ごとに1減る)