#> time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/minute

# 
# 1 5 10 30 60とか
# 乱数を取得して
# 1~50 1
# 51~75 5
# 76~90 10
# 91~98 30
# 99,100? 60
# 1~100の乱数を取得
data modify storage math: in set value [1,100]
function #math:dice
# 乱数結果を代入する
execute store result score _ TUSB run data get storage math: out.sum
# 乱数の結果に応じてmobを出すよ
execute if score _ TUSB matches 1..10 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/minute_mob/1
execute if score _ TUSB matches 11..30 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/minute_mob/5
execute if score _ TUSB matches 31..70 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/minute_mob/10
execute if score _ TUSB matches 71..90 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/minute_mob/30
execute if score _ TUSB matches 91..100 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/minute_mob/60