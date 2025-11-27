#> time_limit:boss/newstar_king/calculate_hp/change_form/8

# 第八形態(1.17)

# ボスの防具色チェン
# 0 boots, 1 legs, 2 cp
data modify entity @s ArmorItems.[0].tag.display.color set value 771802
data modify entity @s ArmorItems.[1].tag.display.color set value 771802
data modify entity @s ArmorItems.[2].tag.display.color set value 771802
# schedule loopで回す、、、?
function time_limit:boss/newstar_king/skill/time_realization/version/1_17_loop
# 共通部処理
function time_limit:boss/newstar_king/calculate_hp/change_form/universal
