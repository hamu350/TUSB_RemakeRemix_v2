#> tusb_remake:enemy/skill/invoke
# 敵のスキルやつ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### もしも大きいすぎてもいいように0-19にする
scoreboard players set _ TUSB 20
scoreboard players operation @s MobCastTime %= _ TUSB

### ワープだけ
execute if entity @s[tag=WarpOnly] run function tusb_remake:enemy/skill/warp/
### 深淵様
execute if entity @s[tag=Shinen] run function tusb_remake:enemy/skill/shinen/
### はぐれマグマ
execute if entity @s[tag=Magma] run function tusb_remake:enemy/skill/magma/
### ホワイトライダー
execute if entity @s[tag=WhiteRider] run function tusb_remake:enemy/skill/white_rider/
### レッドライダー
execute if entity @s[tag=RedRider] run function tusb_remake:enemy/skill/red_rider/
### ブラックライダー
execute if entity @s[tag=BlackRider] run function tusb_remake:enemy/skill/black_rider/
### ペイルライダー
execute if entity @s[tag=PaleRider] run function tusb_remake:enemy/skill/pale_rider/
# 追加部分
### 新星ノ王
# 本家は王に使用スキル全部tagつけてるけどこっちは一つのtagで管理します
execute if entity @s[tag=NewStar_King] run function time_limit:boss/newstar_king/skill/
### 新星様
execute if entity @s[tag=Shinsei] run function tusb_remake:enemy/skill/shinsei/
#####

### 次のスキルとタイミングを設定
### 0-99を取得
data modify storage math: in set value [1,100]
function #math:dice
execute store result score @s[tag=!FastCast] MobCastTime run data get storage math: out.sum 0.9999999999
### fastcastなモブなら3倍する
execute store result score @s[tag=FastCast] MobCastTime run data get storage math: out.sum 2.9999999999
