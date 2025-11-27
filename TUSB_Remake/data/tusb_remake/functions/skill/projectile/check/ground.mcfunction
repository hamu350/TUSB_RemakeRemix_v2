#> tusb_remake:skill/projectile/check/ground
# 近くのモブをチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 地面についたときに発動するスキルだったら発動
execute if score @s ProjectileSkill matches 3230..3239 run function tusb_remake:skill/archer/blast_shot/schedule/blast
execute if score @s ProjectileSkill matches 3250..3259 run function tusb_remake:skill/archer/ghast_cannon/schedule/blast
execute if score @s ProjectileSkill matches 3260..3269 run function tusb_remake:skill/archer/fatal_shot/schedule/blast

# 接地矢無効化
data merge entity @s {Tags:[TypeChecked]}
