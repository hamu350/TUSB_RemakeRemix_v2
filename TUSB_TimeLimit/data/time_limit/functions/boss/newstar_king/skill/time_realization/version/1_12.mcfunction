#> time_limit:boss/newstar_king/skill/time_realization/version/1_12

# スキル使われたらそれぞれに対して乱数を抽選する

# サウンド(先にやっとく)

# playsound entity.puffer_fish.hurt neutral @s ~ ~ ~ 1 0.5

# 出す
execute as @a[tag=Boss_Fighting] at @s run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/roll