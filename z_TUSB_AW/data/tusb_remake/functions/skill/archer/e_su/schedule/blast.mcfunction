#> tusb_remake:skill/archer/fatal_shot/schedule/blast
### ガストキャノンが弾ける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 矢自体に当たったことにする

scoreboard players operation @s PotentialSkill = @s ProjectileSkill
function tusb_remake:skill/archer/e_su/hit/

### 矢だったら消す
kill @s
