#> skill:trigger/fungus_stick/
# キノコ棒を使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @s[scores={CurrentMode=6240..6249}] run function skill:job_skill/summoner/tsuntsun/fungus/spell

scoreboard players reset @s UseFungusStick
