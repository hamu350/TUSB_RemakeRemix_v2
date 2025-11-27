#> tusb_remake:skill/black_mage/hocus_pocus/spell
# パルプンテを発動(525X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
### MPが足りていたら発動
execute if score _ ActivatedSkill matches 5250..5259 run function tusb_remake:skill/black_mage/hocus_pocus/invoke
