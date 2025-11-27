#> tusb_remake:skill/black_mage/thunder_bolt/schedule/test
# サンダーボルトの範囲をテスト
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 威力を設定
execute if score @s ActivatedSkill matches 5220 run data modify storage score_damage: Argument set value {Damage:150.00,DamageType:"Projectile"}
execute if score @s ActivatedSkill matches 5221 run data modify storage score_damage: Argument set value {Damage:250.00,DamageType:"Projectile"}
execute if score @s ActivatedSkill matches 5222..5229 run data modify storage score_damage: Argument set value {Damage:400.00,DamageType:"Projectile"}

### 水の有無によって範囲が変わる
execute if score @s TUSB = _ TUSB if entity @s[nbt={Fire:0s}] run function tusb_remake:skill/black_mage/thunder_bolt/schedule/invoke/all
execute if score @s TUSB = _ TUSB unless entity @s[nbt={Fire:0s}] run function tusb_remake:skill/black_mage/thunder_bolt/schedule/invoke/single

kill @s
