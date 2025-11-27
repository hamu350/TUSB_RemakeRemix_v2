#> time_limit:boss/newstar_king/skill/time_realization/version/1_17_loop

# 採掘速度低下させます
effect give @a[tag=Boss_Fighting] mining_fatigue 1 4
# 体力割合が変わってないならループ
execute if score $percent_10 Boss_x matches 2 run schedule function time_limit:boss/newstar_king/skill/time_realization/version/1_17_loop 1t