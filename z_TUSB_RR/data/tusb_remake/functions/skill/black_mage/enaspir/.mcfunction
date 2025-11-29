#> tusb_remake:skill/black_mage/enaspir/
# エンアスピル付与(304X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.experience_orb.pickup master @a[distance=..24] ~ ~ ~ 1.5 0.5 0

### リメイク：味方にもかかるようにする、敵の種類によらず効果発動
scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute as @a[distance=..5] at @s run function tusb_remake:skill/black_mage/enaspir/apply
