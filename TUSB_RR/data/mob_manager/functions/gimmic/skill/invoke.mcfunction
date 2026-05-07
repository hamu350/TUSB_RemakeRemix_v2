#> mob_manager:gimmic/skill/invoke
# 敵のスキルやつ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### もしも大きいすぎてもいいように0-19にする
scoreboard players set _ TUSB 20
scoreboard players operation @s MobCastTime %= _ TUSB

### ワープだけ
execute if entity @s[tag=WarpOnly] run function mob_manager:gimmic/skill/warp/
### 深淵様
execute if entity @s[tag=Shinen] run function mob_manager:gimmic/skill/shinen/
### はぐれマグマ
execute if entity @s[tag=Magma] run function mob_manager:gimmic/skill/magma/
### ホワイトライダー
execute if entity @s[tag=WhiteRider] run function mob_manager:gimmic/skill/white_rider/
### レッドライダー
execute if entity @s[tag=RedRider] run function mob_manager:gimmic/skill/red_rider/
### ブラックライダー
execute if entity @s[tag=BlackRider] run function mob_manager:gimmic/skill/black_rider/
### ペイルライダー
execute if entity @s[tag=PaleRider] run function mob_manager:gimmic/skill/pale_rider/


# 追加スキル

# newstar_king
    execute if entity @s[tag=NewstarKing] run function mob_manager:gimmic/skill/newstar_king/

# 亜空間転移
    execute if score @s[tag=akuu] MobCastTime matches 0..4 run function mob_manager:gimmic/skill/akuu
# RiderR
    execute if entity @s[tag=BlackRiderR] run function mob_manager:gimmic/skill/remix_rider/black_rider_remix/
    execute if entity @s[tag=WhiteRiderR] run function mob_manager:gimmic/skill/remix_rider/white_rider_remix/
    execute if entity @s[tag=RedRiderR] run function mob_manager:gimmic/skill/remix_rider/red_rider_remix/
    execute if entity @s[tag=PaleRiderR] run function mob_manager:gimmic/skill/remix_rider/pale_rider_remix/

# infinity_boss
    execute if entity @s[tag=InfinityBoss] run function mob_manager:gimmic/skill/infinity_boss/

# game_master
    execute if entity @s[tag=GM] unless entity @s[tag=GMend] run function mob_manager:gimmic/skill/game_master/

### 次のスキルとタイミングを設定
### 0-99を取得
data modify storage math: in set value [1,100]
function #math:dice
execute store result score @s[tag=!FastCast] MobCastTime run data get storage math: out.sum 0.9999999999
### fastcastなモブなら3倍する
execute store result score @s[tag=FastCast] MobCastTime run data get storage math: out.sum 2.9999999999
