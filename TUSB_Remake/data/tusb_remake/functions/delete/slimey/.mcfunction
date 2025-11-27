#> tusb_remake:delete/slimey/
# スライム系専用削除処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### サイズ変更
data modify entity @s[type=slime,name=!"_"] Size set value 0
data modify entity @s[type=magma_cube,name=!"_"] Size set value 1
### 何度もサイズ変更されないようにする
data modify entity @s CustomName set value '"_"'

### 
data merge entity @s[tag=!FromSpawner] {Health:0f,DeathTime:19s,Silent:true,AbsorptionAmount:0f}
kill @s[tag=FromSpawner]
