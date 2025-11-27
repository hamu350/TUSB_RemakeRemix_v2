#> time_limit:boss/newstar_king/skill/time_realization/version/1.12/roll

# それぞれに色を割り振る場所

# 1~16の乱数を取得
data modify storage math: in set value [1,16]
function #math:dice
# 乱数結果を代入する
execute store result score _ TUSB run data get storage math: out.sum

# それぞれの色を適応
# ファイル名順でいいかな、、、
execute if score _ TUSB matches 1 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/black
execute if score _ TUSB matches 2 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/blue
execute if score _ TUSB matches 3 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/brown
execute if score _ TUSB matches 4 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/cyan
execute if score _ TUSB matches 5 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/gray
execute if score _ TUSB matches 6 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/green
execute if score _ TUSB matches 7 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/light_blue
execute if score _ TUSB matches 8 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/light_gray
execute if score _ TUSB matches 9 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/lime
execute if score _ TUSB matches 10 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/magenta
execute if score _ TUSB matches 11 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/orange
execute if score _ TUSB matches 12 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/pink
execute if score _ TUSB matches 13 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/purple
execute if score _ TUSB matches 14 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/red
execute if score _ TUSB matches 15 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/white
execute if score _ TUSB matches 16 run function time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/yellow