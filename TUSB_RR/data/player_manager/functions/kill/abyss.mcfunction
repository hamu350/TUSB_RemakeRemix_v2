#> player_manager:kill/abyss
#
# 
#
# @within function core:clock/skill_trigger/setup

# 軽減不可ダメージ
  # 引数を設定
    data modify storage score_damage: Argument set value {Damage:1024,EPF:0,BypassArmor:true,BypassResistance:true}
  # 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack
  # 引数を明示的にリセット
    data remove storage score_damage: Argument
