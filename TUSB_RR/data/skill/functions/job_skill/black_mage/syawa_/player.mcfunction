#> skill:job_skill/black_mage/syawa_/player

execute at @e[distance=..10,type=#lib:mob,tag=Enemy,limit=4] run scoreboard players add @s HealCount 2

function player_manager:effect/clear_bad_effect
