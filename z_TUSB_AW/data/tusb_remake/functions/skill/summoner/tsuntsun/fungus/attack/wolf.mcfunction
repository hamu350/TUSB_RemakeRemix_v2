#> tusb_remake:skill/summoner/tsuntsun/fungus/attack/wolf
# ウルフによる攻撃をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 突進モーション代入
data modify storage math: in set from entity @s Rotation
function #math:motion
execute store result entity @s Motion[0] double 0.002 run data get storage math: out[0] 1000
data modify entity @s Motion[1] set value 0.4f
execute store result entity @s Motion[2] double 0.002 run data get storage math: out[2] 1000

## 演出
playsound minecraft:entity.ghast.shoot master @a[distance=..16] ~ ~ ~ 1 2 1

particle minecraft:large_smoke ^ ^0.3 ^0.0 0 0 0 0 1 force
particle minecraft:large_smoke ^ ^0.3 ^0.5 0 0 0 0 1 force
particle minecraft:large_smoke ^ ^0.3 ^1.0 0 0 0 0 1 force
particle minecraft:large_smoke ^ ^0.3 ^1.5 0 0 0 0 1 force
particle minecraft:large_smoke ^ ^0.3 ^2.0 0 0 0 0 1 force
particle minecraft:large_smoke ^ ^0.3 ^2.5 0 0 0 0 1 force

execute if score _ ActivatedSkill matches 6240 run data modify storage score_damage: Argument set value {Damage:10.00,DamageType:"None"}
execute if score _ ActivatedSkill matches 6241..6249 run data modify storage score_damage: Argument set value {Damage:20.00,DamageType:"None"}

### TODO あとで整理する(狩人の呼び出してるから)
execute if score _ ActivatedSkill matches 6240 run execute positioned ^ ^ ^3 as @e[distance=..3,type=#tusb_remake:mob,tag=Enemy] positioned ^ ^ ^-3 run function tusb_remake:skill/archer/blast_shot/hit/damage1
execute if score _ ActivatedSkill matches 6241..6249 run execute positioned ^ ^ ^3 as @e[distance=..3,type=#tusb_remake:mob,tag=Enemy] positioned ^ ^ ^-3 run function tusb_remake:skill/archer/blast_shot/hit/damage2

data modify storage tusb_remake: tsuntsun_attack.wolf set value true
