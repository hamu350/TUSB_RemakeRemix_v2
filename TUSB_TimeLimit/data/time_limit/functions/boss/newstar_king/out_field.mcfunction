#> time_limit:boss/newstar_king/out_field

# めり込みは良くないよお兄さん！

# 戻す
tp @s 500.0 101 501.0
# 警告
playsound entity.enderman.teleport hostile @s ~ ~ ~ 1 0.5
# パーティクル動いてなくてワロタ
execute in the_end run particle minecraft:portal 500.0 102 501.0 0.5 0.5 0.5 0.5 250 normal @s