#> tusb_remake:skill/white_mage/dia/apply
### 雪玉をディアにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data merge entity @s {Tags:[Dia,Projectile,FlyingObject,Driftable,TypeChecked],NoGravity:true}
scoreboard players operation @s ProjectileSkill = _ ActivatedSkill

### ディアの演出有効化
function tusb_remake:skill/white_mage/dia/schedule/

### 飛んでるやつの判定有効化
function tusb_remake:skill/projectile/
