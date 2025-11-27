#> tusb_remake:skill/knight/nagashi_giri/apply
### 流し斬りがヒットした敵に効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.iron_golem.death master @a[distance=..16] ~ ~ ~ 1 2 0
particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force

### リメイク：効果量を増大、効果時間を調整
execute if score _ ActivatedSkill matches 1200 run effect give @s minecraft:weakness 10 99 false
execute if score _ ActivatedSkill matches 1201 run effect give @s minecraft:weakness 25 99 false
execute if score _ ActivatedSkill matches 1202..1209 run effect give @s minecraft:weakness 60 99 false
