#> tusb_remake:skill/ninja/kodama/
# 呼魂を発動させる(203X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.wolf.shake master @a[distance=..32] ~ ~ ~ 2 0.6 0
particle minecraft:enchant ~ ~2 ~ 0 0 0 5 100 force

### リメイク：引き寄せる数を倍に
execute if score @s ActivatedSkill matches 2030 run tp @e[distance=..10,type=item,tag=!SystemEntity,sort=furthest,limit=5] @s
execute if score @s ActivatedSkill matches 2031..2039 run tp @e[distance=..20,type=item,tag=!SystemEntity,sort=furthest,limit=5] @s
