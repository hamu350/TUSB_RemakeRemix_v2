#> tusb_remake:skill/black_mage/thunder_bolt/spell
# サンダーボルトを詠唱(522X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 5220..5229 run function tusb_remake:skill/black_mage/thunder_bolt/ready
