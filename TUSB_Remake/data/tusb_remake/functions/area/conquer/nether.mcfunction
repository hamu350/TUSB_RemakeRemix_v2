#> tusb_remake:area/conquer/nether
# ネザー攻略
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ UseEnderEye run data get storage tusb_remake: conquer.count.nether
execute store result storage tusb_remake: conquer.count.nether int 1 run scoreboard players add _ UseEnderEye 1
