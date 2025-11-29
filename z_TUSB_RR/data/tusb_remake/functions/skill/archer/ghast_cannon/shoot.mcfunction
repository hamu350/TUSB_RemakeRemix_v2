#> tusb_remake:skill/archer/ghast_cannon/shoot
# ガストキャノンを発動(325X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
### MPが足りていたら発動
execute if score _ ActivatedSkill matches 3250..3259 anchored eyes positioned ^ ^ ^ anchored feet at @e[distance=..1,type=arrow,sort=nearest,limit=1] run function tusb_remake:skill/archer/ghast_cannon/apply/
