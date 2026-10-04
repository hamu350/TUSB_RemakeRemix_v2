#> skill:job_skill/summoner/katatoro/cast

execute at @s run particle dragon_breath ~ ~1 ~ 1 0.7 1 0.1 80 force
execute at @s run playsound block.respawn_anchor.deplete master @a[distance=..32] ~ ~ ~ 2 0.75 0.1

execute if score @s ActivatedSkill matches 6330..6339 run function skill:job_skill/summoner/katatoro/summon
