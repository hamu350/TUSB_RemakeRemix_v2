#> tusb_remake:skill/knight/reactive_heal/damaged
# リアクティブヒールを発動(123X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 1230..1239 run function tusb_remake:skill/knight/reactive_heal/heal

advancement revoke @s only tusb_remake:skill/knight/reactive_heal/damaged
