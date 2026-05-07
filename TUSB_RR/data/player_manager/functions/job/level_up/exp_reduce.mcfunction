#> player_manager:job/level_up/exp_reduce
#
# ExptoLevelの減衰
#
# @within function player_manager:job/level_up/

scoreboard players set _ TUSB_sub 10
scoreboard players operation _ TUSB = @s ExpReduce

scoreboard players operation @s NextExp *= _ TUSB_sub
scoreboard players operation _ TUSB_sub += _ TUSB
scoreboard players operation @s NextExp /= _ TUSB_sub

scoreboard players reset _ TUSB
scoreboard players reset _ TUSB_sub