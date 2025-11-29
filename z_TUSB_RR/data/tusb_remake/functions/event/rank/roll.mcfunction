#> tusb_remake:event/rank/roll
# イベントを引き直す
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage math: in set value [1,100]
function #math:dice
execute store result score @s EventRank run data get storage math: out.sum 0.9999999999

# 追加部分

# TUSBデフォ or TLE追加どっちを選ぶかを決める

data modify storage math: in set value [1,2]
function #math:dice
execute store result score @s ChooseEvent run data get storage math: out.sum 1