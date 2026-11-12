#> skill:job/ninja/choyaku/triggered
# 跳躍を発動(222X)

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function skill:check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 2260..2269 run function skill:job/ninja/seiyou/apply
