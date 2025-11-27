#> time_limit:boss/newstar_king/calculate_hp/change_form/10

# 最終形態(1.19)

# ボスの防具色チェン
# 0 boots, 1 legs, 2 cp
data modify entity @s ArmorItems.[0].tag.display.color set value 65535
data modify entity @s ArmorItems.[1].tag.display.color set value 65535
data modify entity @s ArmorItems.[2].tag.display.color set value 65535
# MP戻す
scoreboard objectives setdisplay sidebar MP
# 共通部処理
function time_limit:boss/newstar_king/calculate_hp/change_form/universal