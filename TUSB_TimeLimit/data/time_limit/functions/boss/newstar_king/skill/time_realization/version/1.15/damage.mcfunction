#> time_limit:boss/newstar_king/skill/time_realization/version/1.15/damage


# ダメージどれくらいにしようかなぁ、、、


# 一旦50
# 軽減可能な50dmg
  # 引数を設定
    data modify storage score_damage: Argument set value {Damage:60.00}
  # 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack
  # 引数を明示的にリセット
    data remove storage score_damage: Argument

# ダメージ+毒、ウィザー

effect give @s poison 1 5