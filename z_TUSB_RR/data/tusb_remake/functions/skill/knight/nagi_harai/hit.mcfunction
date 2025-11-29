#> tusb_remake:skill/knight/nagi_harai/hit
# 薙ぎ払いを発動(121X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 1210..1219 as @e[distance=..5,type=#tusb_remake:mob,tag=Enemy,nbt={HurtTime:10s}] at @s run function tusb_remake:skill/knight/nagi_harai/apply
