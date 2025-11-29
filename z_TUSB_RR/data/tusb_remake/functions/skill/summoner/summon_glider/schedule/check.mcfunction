#> tusb_remake:skill/summoner/summon_glider/schedule/check
### バルーン発射までの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 向きを変えてあげる
## -90 90 -> -5 - 5 -> 0 - 10
execute positioned ^ ^ ^-1 rotated ~ 0 positioned ^ ^ ^-19 facing entity @s feet positioned as @s rotated ~ ~7 as @e[distance=..1,type=phantom,tag=Glider,sort=nearest,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

execute as @e[distance=..1,type=phantom,tag=Glider,sort=nearest,limit=1] run function tusb_remake:skill/summoner/summon_glider/schedule/set_motion

data modify storage tusb_remake: _ set value true
