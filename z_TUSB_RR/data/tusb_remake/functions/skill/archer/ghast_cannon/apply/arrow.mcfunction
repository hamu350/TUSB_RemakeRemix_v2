#> tusb_remake:skill/archer/ghast_cannon/apply/arrow
### 矢をガストキャノンにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ガストキャノンのレベルを追加
scoreboard players operation @s ProjectileSkill = _ ActivatedSkill

### 
data modify entity @s Tags set value [GhastCannon,Arrow,Projectile,FlyingObject,Driftable,TypeChecked]
data modify entity @s damage set value 0d
data modify entity @s NoGravity set value true
