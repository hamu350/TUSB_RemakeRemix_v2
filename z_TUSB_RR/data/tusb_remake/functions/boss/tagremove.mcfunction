#> tusb_remake:boss/tagremove
# ボス戦中に離脱してボス戦が終わったころに入った人に実行

# 待機部屋に転送
execute at @s if entity @e[type=armor_stand,distance=..20,tag=Boss_MarkerB] run tp @s -2709 74 -379
execute at @s if entity @e[type=armor_stand,distance=..20,tag=Boss_MarkerB] run clear @s

# タグ消し
tag @s remove InfinityBossBattle