execute as @a at @e[type=#tusb_remake:mob,distance=..10] run scoreboard players add @s[distance=..10] HealCount 4

execute as @a at @e[type=#tusb_remake:mob,distance=..10] run function tusb_remake:player/clear_bad_effect
