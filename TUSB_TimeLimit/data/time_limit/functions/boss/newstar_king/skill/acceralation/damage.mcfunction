#> time_limit:boss/newstar_king/skill/acceralation/damage

# ダメージ与える場所

# 一旦60
# 軽減可能な60dmg
  # 引数を設定
    data modify storage score_damage: Argument set value {Damage:60.00}
  # 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack
  # 引数を明示的にリセット
    data remove storage score_damage: Argument

# marker kill
execute as @e[type=marker,tag=acceralation] run kill @s