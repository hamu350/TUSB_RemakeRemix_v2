#> tusb_remake:skill/black_mage/syawa_/spell

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 5270..5279 run function tusb_remake:skill/black_mage/syawa_/cast
