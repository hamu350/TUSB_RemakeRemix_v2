#> tusb_remake:player/heal/large
# プレイヤーのHPを大きく回復
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

effect give @s minecraft:instant_health 1 0 true
scoreboard players remove @s HealCount 4
