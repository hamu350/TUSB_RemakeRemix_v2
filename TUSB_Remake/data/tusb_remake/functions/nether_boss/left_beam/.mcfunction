#> tusb_remake:nether_boss/left_beam/
# 左目からのビーム
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 初期地点に配置
execute as 0-0-1-0-6 at @s positioned ~ ~ ~ run tp 0-0-1-0-6 @e[tag=LeftEyeTarget,sort=nearest,limit=1]
### おめめ光らせる
execute as 0-0-1-0-6 at @s positioned ~ ~ ~ as @e[distance=..3,type=minecraft:end_crystal] run data merge entity @s {Glowing:true}
### ビーム発射！！
schedule function tusb_remake:nether_boss/left_beam/schedule 1t
schedule function tusb_remake:nether_boss/left_beam/blast 1s
