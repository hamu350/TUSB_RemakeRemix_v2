#> time_limit:boss/newstar_king/calculate_hp/change_form/universal

# 共通処理部
# 演出入れよう
particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal @a
playsound minecraft:block.portal.trigger block @a[distance=..100] ~ ~ ~ 1 2
# 無敵ちょっと
tag @s remove Enemy
data modify entity @s Invulnerable set value 1
# 形態変化時強制スキル使用
function time_limit:boss/newstar_king/skill/time_realization/
# 3秒後に無敵解除
schedule function time_limit:boss/newstar_king/calculate_hp/change_form/schedule_result 3s