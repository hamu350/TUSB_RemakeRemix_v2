#> tusb_remake:skill/ninja/isukumi/throw
# 居縮を発動(223X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 2230..2239 anchored eyes positioned ^ ^ ^ anchored feet at @e[distance=..1,type=snowball,sort=nearest,limit=1] run function tusb_remake:skill/ninja/isukumi/apply
