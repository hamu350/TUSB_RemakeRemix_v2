#> tusb_remake:skill/white_mage/ora/spell

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 4260..4269 run function tusb_remake:skill/white_mage/ora/cast
