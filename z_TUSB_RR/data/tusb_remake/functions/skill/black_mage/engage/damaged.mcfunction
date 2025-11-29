#> tusb_remake:skill/black_mage/magic_shield/damaged
# マジックシールドを解除
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### リメイク：効果が切れてから１秒間も無敵
tag @s remove MagicShield
tellraw @s {"text":"マジックシールドの効果が切れた。","color":"gold"}
particle minecraft:item minecraft:potion ~ ~1 ~ 0.5 0.5 0.5 0.2 60 force @a[distance=..64]
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1 0.6 0

advancement revoke @s only tusb_remake:skill/black_mage/magic_shield/damaged
