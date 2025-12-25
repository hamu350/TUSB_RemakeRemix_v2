#> tusb_remake:skill/knight/uxo_pu/damaged

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 1260..1269 run function tusb_remake:skill/knight/uxo_pu/heal

advancement revoke @s only tusb_remake:skill/knight/reactive_heal/damaged2
