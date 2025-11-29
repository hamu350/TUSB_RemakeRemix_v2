#> tusb_remake:skill/archer/fatal_shot/apply/arrow
### 矢をフェイタルショットにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### フェイタルショットのレベルを追加
scoreboard players operation @s ProjectileSkill = _ ActivatedSkill

###
data modify entity @s Tags set value [FatalShot,Arrow,Projectile,FlyingObject,Driftable,TypeChecked]
data modify entity @s damage set value 0d
