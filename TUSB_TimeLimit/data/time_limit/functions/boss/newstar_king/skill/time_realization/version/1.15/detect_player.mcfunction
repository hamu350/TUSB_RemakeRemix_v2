#> time_limit:boss/newstar_king/skill/time_realization/version/1.15/detect_player

# 動いているタイミングでプレイヤーがハチに当たったかどうかをチェックする


execute as @e[type=bee,tag=1_15_bee] at @s run execute if entity @a[distance=..0.25] run function time_limit:boss/newstar_king/skill/time_realization/version/1.15/damage