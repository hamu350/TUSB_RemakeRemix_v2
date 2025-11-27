#> tusb_remake:skill/black_mage/drain/apply
# ドレインで吸われる側
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @e[distance=..20,type=#tusb_remake:mob,tag=Enemy,sort=nearest,limit=1] run summon marker ~ ~ ~ {Tags:[taisosinnyo]}
playsound item.trident.thunder master @a[distance=..16] ~ ~ ~ 1 2 0
execute at @e[tag=taisosinnyo] run particle minecraft:witch ~ ~1 ~ 0.5 0.3 0.5 0 1 force @a

execute as @e[tag=taisosinnyo] run schedule function tusb_remake:skill/ninja/taiso/player 0.5s
execute at @e[tag=taisosinnyo] if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/ninja/taiso/kill 220t