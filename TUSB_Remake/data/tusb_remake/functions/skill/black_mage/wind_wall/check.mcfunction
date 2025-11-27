#> tusb_remake:skill/black_mage/wind_wall/check
# ウィンドウォールをチェックします
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

particle minecraft:sweep_attack ~ ~1 ~ 2 2 2 0 1 force

### 1秒ごとに音をならす
scoreboard players operation _ WindWall = @s WindWall
scoreboard players set _ TUSB 20
scoreboard players operation _ WindWall %= _ TUSB
execute if score _ WindWall matches 0 run playsound block.fire.extinguish master @a[distance=..16] ~ ~-100 ~ 0 0.5 0.1

### ウィンドウォールのカウントを更新する
scoreboard players remove @s WindWall 1
tellraw @s[scores={WindWall=..0}] {"text":"ウィンドウォールの効果が切れた。","color":"gold"}
scoreboard players reset @s[scores={WindWall=..0}] WindWall

execute as @e[distance=..6,tag=Driftable,tag=!DriftableA] at @s run kill @s
execute as @e[distance=..6,tag=DriftableA] at @s run function tusb_remake:skill/black_mage/wind_wall/block
