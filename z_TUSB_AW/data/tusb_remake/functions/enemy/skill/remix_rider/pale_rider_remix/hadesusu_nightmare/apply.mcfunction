#> tusb_remake:enemy/skill/remix_rider/pale_rider_remix/hadesusu_nightmare/apply

# 軽減不可の現在体力の3/4
  # 引数を設定
    data modify storage score_damage: Argument set value {EPF:0,BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"%1$sは%2$sによって%3$sしまった。","with":[{"selector":"@s"},{"selector":"@e[tag=PaleRider,sort=nearest,limit=1]"},{"translate":"命を刈り取られて","color":"#f73626","bold":true}]}]'}
    execute store result storage score_damage: Argument.Damage float 0.75 run data get entity @s Health
  # 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack
  # 引数を明示的にリセット
    data remove storage score_damage: Argument
