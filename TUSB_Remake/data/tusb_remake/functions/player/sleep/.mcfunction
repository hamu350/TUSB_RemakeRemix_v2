#> tusb_remake:player/sleep/
# 寝た時の効果
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

effect give @s[gamemode=adventure] minecraft:instant_damage 1 0 true
tellraw @s[gamemode=adventure] {"text":"痛っ！ここで寝るのは危ないようだ。","color":"yellow"}

effect give @s[gamemode=survival] minecraft:instant_health 1 6 true
tellraw @s[gamemode=survival] {"text":"( ˘ω˘ ) ｽﾔｧ…疲れが取れていく…","color":"aqua"}

scoreboard players set @s SleepInBed 0
