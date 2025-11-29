#> tusb_remake:skill/summoner/fill/cast
# フィール発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run particle dragon_breath ~ ~1 ~ 1 0.7 1 0.1 80 force
execute at @s run playsound block.respawn_anchor.deplete master @a[distance=..32] ~ ~ ~ 2 0.75 0.1


execute if score @s ActivatedSkill matches 6320..6329 run function tusb_remake:skill/summoner/katatoro/summon