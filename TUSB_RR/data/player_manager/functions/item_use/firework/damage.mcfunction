#> player_manager:item_use/firework/damage
# 花火を使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 軽減不可ダメージ
  # 引数を設定
    data modify storage score_damage: Argument set value {Damage:0,EPF:0,BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"%1$sは汚い花火になった。","color":"red","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage double 0.25 run attribute @s generic.max_health get
  # 対象を実行者にしてfunctionを実行
    execute as @s[gamemode=!creative] run function score_damage:api/attack
  # 引数を明示的にリセット
    data remove storage score_damage: Argument

# title
  title @s actionbar {"text":"花火が暴発している！！！","color": "red","bold": true}
