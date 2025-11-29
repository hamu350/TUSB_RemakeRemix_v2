#> tusb_remake:skill/archer/enchase/shoot/
# 弓矢を発射したらエンチェイスをかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[tag=EnChase1] anchored eyes positioned ^ ^ ^ anchored feet as @e[distance=..2,type=#tusb_remake:arrow,nbt={life:0s},sort=nearest,limit=1] run function tusb_remake:skill/archer/enchase/shoot/1
execute if entity @s[tag=EnChase2] anchored eyes positioned ^ ^ ^ anchored feet as @e[distance=..2,type=#tusb_remake:arrow,nbt={life:0s},sort=nearest,limit=1] run function tusb_remake:skill/archer/enchase/shoot/2

tellraw @s {"text":"エンチェイスの効果が切れた。","color":"gold"}

tag @s remove EnChase
tag @s remove EnChase1
tag @s remove EnChase2

### 飛んでるやつの判定有効化
function tusb_remake:skill/projectile/
