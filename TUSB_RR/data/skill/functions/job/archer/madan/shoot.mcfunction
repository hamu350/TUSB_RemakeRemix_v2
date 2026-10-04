#> skill:job_skill/archer/madan/shoot

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function skill:check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
### MPが足りていたら発動
execute if score _ ActivatedSkill matches 3270..3279 anchored eyes positioned ^ ^ ^ anchored feet at @e[distance=..1,type=arrow,sort=nearest,limit=1] run function skill:job_skill/archer/madan/apply/
