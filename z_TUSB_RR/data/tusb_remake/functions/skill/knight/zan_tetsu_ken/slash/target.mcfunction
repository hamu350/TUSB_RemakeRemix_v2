#> tusb_remake:skill/knight/zan_tetsu_ken/slash/target
# 斬鉄剣で斬られる
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ダメージを与える
data modify storage score_damage: Argument set value {Damage:650.00,DamageType:"Projectile"}
function score_damage:api/attack

particle minecraft:crit ~ ~1 ~ 0.1 0.2 0.1 1 10 force
playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 1 2 0
