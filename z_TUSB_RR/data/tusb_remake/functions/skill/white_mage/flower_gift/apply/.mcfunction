#> tusb_remake:skill/white_mage/flower_gift/apply/
### 雪玉をフラワーギフトにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=0,type=snowball,limit=1] run function tusb_remake:skill/white_mage/flower_gift/apply/snowball

# 発射時攻撃判定

execute if score _ ActivatedSkill matches 4220 run execute as @e[distance=..8,type=#tusb_remake:mob,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]},team=!Boss] at @s run function tusb_remake:skill/white_mage/flower_gift/schedule/hit/1
execute if score _ ActivatedSkill matches 4221 run execute as @e[distance=..8,type=#tusb_remake:mob,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]},team=!Boss] at @s run function tusb_remake:skill/white_mage/flower_gift/schedule/hit/2
execute if score _ ActivatedSkill matches 4222..4229 run execute as @e[distance=..8,type=#tusb_remake:mob,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]},team=!Boss] at @s run function tusb_remake:skill/white_mage/flower_gift/schedule/hit/3
### フラワーギフトの演出有効化
function tusb_remake:skill/white_mage/flower_gift/schedule/

### 飛んでるやつの判定有効化
function tusb_remake:skill/projectile/
