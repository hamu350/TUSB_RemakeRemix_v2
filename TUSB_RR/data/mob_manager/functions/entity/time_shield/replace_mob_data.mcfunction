#> mob_manager:entity/time_shield/replace_mob_data
#
# mobに一定確率で強化された時送りの盾を装備させます

# 1~10の乱数を取得
data modify storage math: in set value [1,10]
function #math:dice

# 乱数結果を代入する
execute store result score _ TUSB run data get storage math: out.sum

# 1,2なら盾持たせる
execute if score _ TUSB matches 1..2 run function mob_manager:entity/time_shield/replace_shield
