#> time_limit:boss/newstar_king/skill/time_realization/version/1.14/

# 対象を抽選

# 1~6の乱数を取得
data modify storage math: in set value [1,6]
function #math:dice
# 乱数結果を代入する
execute store result score _ TUSB run data get storage math: out.sum

# 結果に応じてモンスター出す
execute if score _ TUSB matches 1 run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/pillager
execute if score _ TUSB matches 2 run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/vindicator
execute if score _ TUSB matches 3 run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/witch
execute if score _ TUSB matches 4 run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/ravager
execute if score _ TUSB matches 5 run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/evoker
execute if score _ TUSB matches 6 run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/illusioner

# 2回目

# 1~6の乱数を取得
data modify storage math: in set value [1,6]
function #math:dice
# 乱数結果を代入する
execute store result score _ TUSB run data get storage math: out.sum

# 結果に応じてモンスター出す
execute if score _ TUSB matches 1 run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/pillager
execute if score _ TUSB matches 2 run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/vindicator
execute if score _ TUSB matches 3 run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/witch
execute if score _ TUSB matches 4 run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/ravager
execute if score _ TUSB matches 5 run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/evoker
execute if score _ TUSB matches 6 run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/illusioner