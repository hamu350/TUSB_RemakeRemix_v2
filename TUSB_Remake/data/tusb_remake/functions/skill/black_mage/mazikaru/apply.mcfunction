#> tusb_remake:skill/black_mage/drain/apply
# ドレインで吸われる側
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run particle end_rod ~ ~1 ~ 0.3 5 0.3 0.1 100 force
playsound entity.illusioner.prepare_blindness master @a[distance=..16] ~ ~ ~ 2 1 0
particle enchant ~ ~1.5 ~ 0.1 0.1 0.1 1 90 force

execute if score _ ActivatedSkill matches 5260..5269 run data modify storage score_damage: Argument set value {Damage:50.00,DamageType:"None"}
function score_damage:api/attack

data modify storage tusb_remake: drain_result set value true
