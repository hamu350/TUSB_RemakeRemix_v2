#> tusb_remake:player/mp/natural
# MPの自然回復処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 最大MPじゃなかったら、次の回復のタイマーをセット
execute if score @s MP < @s MPMax run scoreboard players operation @s CoolTickCounter = @s CoolTickSpan
### MP回復
scoreboard players operation @s MP += @s MPIncrement
### マナリフレッシュがかかっているときは、もう一回回復
execute if entity @s[scores={ManaRefresh=0..}] run scoreboard players operation @s MP += @s MPIncrement
### 最大MPを超えないようにする
scoreboard players operation @s MP < @s MPMax
