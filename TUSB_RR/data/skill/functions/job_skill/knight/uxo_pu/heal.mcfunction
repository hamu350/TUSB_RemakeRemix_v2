#> skill:job_skill/knight/uxo_pu/heal

playsound item.trident.thunder master @a[distance=..16] ~ ~ ~ 0.5 2 0
particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.15 30 force

execute if score @s ActivatedSkill matches 1260..1269 run scoreboard players add @s HealCount 15
function player_manager:effect/clear_bad_effect
