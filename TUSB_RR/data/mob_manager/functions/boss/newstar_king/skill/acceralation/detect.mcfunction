#> mob_manager:boss/newstar_king/skill/acceralation/detect

# markerの周囲にいるプレイヤーに対してkillを実行
execute as @e[type=marker,tag=acceralation] at @s as @a[distance=..1.5] run function mob_manager:boss/newstar_king/skill/acceralation/damage