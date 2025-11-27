#> tusb_remake:skill/white_mage/holy/schedule/hit
# ホーリーが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### マルチヒット防止のエフェクト
effect give @s minecraft:saturation 10 127 true

execute if entity @s[type=#tusb_remake:undead] run effect give @s minecraft:instant_health 1 6 true
execute unless entity @s[type=#tusb_remake:undead] run effect give @s minecraft:instant_damage 1 3 true

playsound block.fire.extinguish master @a[distance=..32] ~ ~ ~ 2 2 0
particle firework ~ ~1 ~ 1 1 1 0.25 20 force
