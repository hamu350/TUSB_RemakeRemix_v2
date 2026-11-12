#> skill:job/black_mage/lightning_shower/player

execute at @e[distance=..10,type=#lib:mob,tag=Enemy,limit=4] run scoreboard players add @s HealCount 2

function player_manager:effect/clear_bad_effect
