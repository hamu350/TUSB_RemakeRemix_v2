#> tusb_remake:skill/archer/fatal_shot/shoot
# フェイタルショットを発動(326X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
### MPが足りていたら発動
execute if score _ ActivatedSkill matches 3260..3269 anchored eyes positioned ^ ^ ^ anchored feet at @e[distance=..1,type=arrow,sort=nearest,limit=1] run function tusb_remake:skill/archer/fatal_shot/apply/
