#> tusb_remake:skill/knight/shinku_giri/schedule/
### 真空斬りの弾を飛ばす
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
execute as @e[type=snowball,tag=AerialBlast] at @s run function tusb_remake:skill/knight/shinku_giri/schedule/fly

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/knight/shinku_giri/schedule/ 1t
