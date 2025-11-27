#> tusb_remake:skill/summoner/summon_glider/schedule/set_motion
### バルーン発射までの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage math: in set from entity @s Rotation
function #math:motion
execute store result entity @s Motion[0] double 0.0005 run data get storage math: out[0] 1000
data modify entity @s Motion[1] set from storage math: out[1]
execute store result entity @s Motion[2] double 0.0005 run data get storage math: out[2] 1000
