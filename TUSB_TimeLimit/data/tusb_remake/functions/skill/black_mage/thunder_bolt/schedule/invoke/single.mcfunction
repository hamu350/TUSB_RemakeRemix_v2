#> tusb_remake:skill/black_mage/thunder_bolt/schedule/invoke/single
# サンダーボルトの範囲をテスト
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: 単体を対象とするのではなく、2体に対してダメージを与えるように

execute positioned ~-5 ~-5 ~-5 run tag @e[dx=10,dy=20,dz=10,type=#tusb_remake:mob,tag=Enemy] add ThunderBoltTarget
execute positioned ~ ~20 ~ as @e[distance=..28,type=#tusb_remake:mob,tag=ThunderBoltTarget,sort=nearest,limit=2] at @s run function tusb_remake:skill/black_mage/thunder_bolt/schedule/invoke/apply
