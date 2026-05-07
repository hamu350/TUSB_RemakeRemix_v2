#> player_manager:kill/abyss
#
# 
#
# @within function core:clock/skill_trigger/setup

# 軽減不可ダメージ
  # 引数を設定
    data modify storage score_damage: Argument set value {Damage:1024,EPF:0,BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"%1$sは好奇心を抑えきれず[%2$s]に殺された。","with":[{"selector":"@s"},{"translate":"ゲームの仕様","color":"#ff1c1c","bold":true}]}]'}
  # 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack
  # 引数を明示的にリセット
    data remove storage score_damage: Argument
