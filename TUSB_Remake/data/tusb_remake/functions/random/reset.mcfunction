#> tusb_remake:random/reset
# 乱数を使えるようにリセットします
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 乱数をリセットする
execute store result score @s RndMWC store result score @s RndMWCCarry run time query gametime
scoreboard players set _ RndMWC 65536
scoreboard players operation @s RndMWC %= _ Const
scoreboard players operation @s RndMWCCarry /= _ Const
