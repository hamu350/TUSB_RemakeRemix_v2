#> time_limit:player/barriarkill
# 不可壊ブロックにめり込んだ時のダメージ
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

playsound minecraft:ambient.basalt_deltas.mood master @a ~ ~ ~ 100 2 1
# 軽減不可ダメージ
  # 引数を設定
    data modify storage score_damage: Argument set value {Damage:1024,EPF:0,BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"%1$sは好奇心を抑えきれず[%2$s]に殺された。","with":[{"selector":"@s"},{"translate":"ゲームの仕様","color":"#ff1c1c","bold":true}]}]'}
  # 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack
  # 引数を明示的にリセット
    data remove storage score_damage: Argument