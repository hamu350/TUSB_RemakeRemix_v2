#> tusb_remake:event/rank/roll
# イベントを引き直す
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage math: in set value [1,100]
function #math:dice
execute store result score @s EventRank run data get storage math: out.sum 0.9999999999
