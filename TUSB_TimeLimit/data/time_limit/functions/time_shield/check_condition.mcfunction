#> time_limit:time_shield/check_condition
# 時送りの盾強化がonかどうかをしらべます

execute if score Time_Shield Option matches 1 run function time_limit:time_shield/change_data
# revoke
advancement revoke @s only time_limit:time_limit/time_shield_inv