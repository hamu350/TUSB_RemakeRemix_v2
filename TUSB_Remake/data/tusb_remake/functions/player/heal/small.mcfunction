#> tusb_remake:player/heal/small
# プレイヤーのHPを少しずつ回復
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

effect give @s minecraft:regeneration 3 0 true
scoreboard players remove @s HealCount 1
