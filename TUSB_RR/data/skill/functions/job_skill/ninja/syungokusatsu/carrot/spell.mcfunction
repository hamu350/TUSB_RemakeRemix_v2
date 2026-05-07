#> skill:job_skill/ninja/syungokusatsu/carrot/spell
###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function skill:check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 2270..2279 run function skill:job_skill/ninja/syungokusatsu/carrot/cast
