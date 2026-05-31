#> mob_manager:boss/tick
#
# 
#
# @within function core:clock/main

execute as @e[type=potion,distance=..3] at @s run function mob_manager:gimmic/tick/potion_barrier
effect give @s resistance 3 2 true
effect clear @s weakness
effect clear @s slowness
