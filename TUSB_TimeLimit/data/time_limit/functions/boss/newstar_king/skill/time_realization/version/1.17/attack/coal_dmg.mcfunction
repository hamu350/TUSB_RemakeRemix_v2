#> time_limit:boss/newstar_king/skill/time_realization/version/1.17/attack/coal_dmg


# 火耐性で軽減可能な50dmg
  # 引数を設定
    data modify storage score_damage: Argument set value {Damage:50.00,DamageType:"Fire"}
  # 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack
  # 引数を明示的にリセット
    data remove storage score_damage: Argument

# スコアリセット

scoreboard players reset @s TUSB