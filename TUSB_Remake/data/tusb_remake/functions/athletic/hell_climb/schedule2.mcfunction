#> tusb_remake:athletic/hell_climb/schedule2
# ヘルクライム
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 落ちてくる砂にダメージ判定を入れる
execute in minecraft:the_nether as @e[type=falling_block,x=-354,y=143,z=1297,dx=3,dy=0,dz=3] run data merge entity @s {HurtEntities:1b,FallHurtAmount:5,FallHurtMax:5}
