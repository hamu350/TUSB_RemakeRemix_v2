#> skill:job_skill/knight/uxo_pu/damaged

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function skill:check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 1260..1269 run function skill:job_skill/knight/uxo_pu/heal

advancement revoke @s only skill:trigger/knight/reactive_heal/damaged2
