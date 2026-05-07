#> skill:trigger/projectile/check/ground
# 近くのモブをチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 地面についたときに発動するスキルだったら発動
execute if score @s ProjectileSkill matches 3230..3239 run function skill:job_skill/archer/blast_shot/schedule/blast
execute if score @s ProjectileSkill matches 3250..3259 run function skill:job_skill/archer/ghast_cannon/schedule/blast
execute if score @s ProjectileSkill matches 3260..3269 run function skill:job_skill/archer/fatal_shot/schedule/blast
execute if score @s ProjectileSkill matches 3280..3289 run function skill:job_skill/archer/e_su/schedule/blast
# 接地矢無効化
data merge entity @s {Tags:[TypeChecked]}
