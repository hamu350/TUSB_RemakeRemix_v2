#> tusb_remake:skill/summoner/fill/cast
# フィール発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.bat.takeoff master @a[distance=..32] ~ ~ ~ 2 0.6 0
particle minecraft:wax_off ~ ~ ~ 2 0 2 0 60 force

execute if score @s ActivatedSkill matches 6200 align xyz positioned ~0.5 ~ ~0.5 run function tusb_remake:skill/summoner/fill/place/5
execute if score @s ActivatedSkill matches 6201 align xyz positioned ~0.5 ~ ~0.5 run function tusb_remake:skill/summoner/fill/place/7
execute if score @s ActivatedSkill matches 6202..6209 align xyz positioned ~0.5 ~ ~0.5 run function tusb_remake:skill/summoner/fill/place/9
