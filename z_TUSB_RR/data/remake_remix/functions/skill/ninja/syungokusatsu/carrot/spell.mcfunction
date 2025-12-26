#> tusb_remake:skill/ninja/syungokusatsu/carrot/spell
###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 2270..2279 run function tusb_remake:skill/ninja/syungokusatsu/carrot/cast
