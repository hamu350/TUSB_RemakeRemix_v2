#> time_limit:boss/newstar_king/calculate_hp/change_form/7

# 第七形態(1.16)

# ボスの防具色チェン
# 0 boots, 1 legs, 2 cp
data modify entity @s ArmorItems.[0].tag.display.color set value 1092296
data modify entity @s ArmorItems.[1].tag.display.color set value 1092296
data modify entity @s ArmorItems.[2].tag.display.color set value 1092296
# 共通部処理
function time_limit:boss/newstar_king/calculate_hp/change_form/universal