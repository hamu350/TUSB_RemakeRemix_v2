#> time_limit:boss/newstar_king/calculate_hp/check_hp

# 存在を確認したのでhpをチェック
#execute store result score $Temp Boss_Health run data get entity @s Health 100
execute store result score $Current_Health Boss_Health run data get entity @s Health 100
# scaleを100にすることで小数点第二位までの体力を取得可能
# 0.01でも削れてるなら検知
#execute if score $Temp Boss_Health matches ..102399 run function health_remove
execute if score $Current_Health Boss_Health matches ..102399 run function time_limit:boss/newstar_king/calculate_hp/health_remove