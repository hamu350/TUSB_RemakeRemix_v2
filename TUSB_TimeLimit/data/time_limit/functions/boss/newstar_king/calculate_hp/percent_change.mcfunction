#> time_limit:boss/newstar_king/calculate_hp/percent_change

# function先はHP割合代入して形態チェンジを実行するとか?
# 現在のHP割合を正式に代入
# execute asで引っかかってる説?
# 逆だったかもしれねぇ、、、
scoreboard players operation $percent_10 Boss_x = $Temp Boss_Health
# 割合に応じて形態チェンジ
# でもこれなら2割以上削れても対応できそう、削れたら知らん
# 形態変化時エフェクトとかあったほうがいいと思うんよなぁ、、、
# なお(ry
# invvつけたらどうなるかな
# invv+Enemytagを外す
execute if score $percent_10 Boss_x matches 8 run function time_limit:boss/newstar_king/calculate_hp/change_form/2
execute if score $percent_10 Boss_x matches 7 run function time_limit:boss/newstar_king/calculate_hp/change_form/3
execute if score $percent_10 Boss_x matches 6 run function time_limit:boss/newstar_king/calculate_hp/change_form/4
execute if score $percent_10 Boss_x matches 5 run function time_limit:boss/newstar_king/calculate_hp/change_form/5
execute if score $percent_10 Boss_x matches 4 run function time_limit:boss/newstar_king/calculate_hp/change_form/6
execute if score $percent_10 Boss_x matches 3 run function time_limit:boss/newstar_king/calculate_hp/change_form/7
execute if score $percent_10 Boss_x matches 2 run function time_limit:boss/newstar_king/calculate_hp/change_form/8
execute if score $percent_10 Boss_x matches 1 run function time_limit:boss/newstar_king/calculate_hp/change_form/9
execute if score $percent_10 Boss_x matches 0 run function time_limit:boss/newstar_king/calculate_hp/change_form/10