#> tusb_remake:skill/black_mage/thunder_bolt/schedule/invoke/apply
# サンダーボルトの範囲をテスト
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @s remove ThunderBoltTarget

### あたったときの演出
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..32] ~ ~ ~ 2 1.8 0.1
particle minecraft:item minecraft:sunflower ~ ~2 ~ 0 0.1 0 2 30 force @a[distance=..64]
particle crit ~ ~4 ~ 0.1 2 0.1 0.0 90 force

### ダメージを与える
execute unless entity @s[nbt={ActiveEffects:[{Id:23}]}] run function score_damage:api/attack
effect give @s saturation 10 0 false 