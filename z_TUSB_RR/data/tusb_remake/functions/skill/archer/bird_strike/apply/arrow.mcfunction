#> tusb_remake:skill/archer/bird_strike/apply/arrow
### 矢をチェインアローにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players operation @s ProjectileSkill = _ ActivatedSkill

data modify entity @s Tags set value [BirdStrike,Arrow,Projectile,FlyingObject,Driftable,TypeChecked]
