#> tusb_remake:skill/archer/blast_shot/shoot
# ブラストショットを発動(323X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
### MPが足りていたら発動
execute if score _ ActivatedSkill matches 3230..3239 anchored eyes positioned ^ ^ ^ anchored feet at @e[distance=..1,type=arrow,sort=nearest,limit=1] run function tusb_remake:skill/archer/blast_shot/apply/
