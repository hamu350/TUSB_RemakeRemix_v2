#> tusb_remake:skill/black_mage/drain/player
# ドレインで吸う側
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 
particle minecraft:portal ~ ~1.5 ~ 0.1 0.1 0.1 1 90 force

### リメイク：回復量を倍に
### レベル１ 💗💗💗💗　💛💛
execute if score _ ActivatedSkill matches 5240 run effect give @s minecraft:instant_health 1 1 true
execute if score _ ActivatedSkill matches 5240 run effect give @s minecraft:absorption 15 0 true
### レベル２　💗💗💗💗💗💗💗💗　💛💛💛💛
execute if score _ ActivatedSkill matches 5241..5249 run effect give @s minecraft:instant_health 1 2 true
execute if score _ ActivatedSkill matches 5241..5249 run effect give @s minecraft:absorption 15 1 true
