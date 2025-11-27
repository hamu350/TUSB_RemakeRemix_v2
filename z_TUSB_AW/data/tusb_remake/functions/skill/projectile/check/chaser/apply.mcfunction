#> tusb_remake:skill/projectile/check/chaser/apply
# エンチェイス効果発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 矢のダメージを入れる
function score_damage:api/attack

### スキルの効果があれば付与
scoreboard players operation @s PotentialSkill = _ PotentialSkill
execute if score _ PotentialSkill matches 1.. run function tusb_remake:skill/projectile/hit

data modify storage tusb_remake: chaser_invoked set value true
