#> time_limit:boss/newstar_king/calculate_hp/change_form/schedule_result

# タグと無敵化を外すよ
execute as @e[type=zombie,tag=NewStar_King,limit=1] run tag @s add Enemy
execute as @e[type=zombie,tag=NewStar_King,limit=1] run data modify entity @s Invulnerable set value 0