#> tusb_remake:skill/summoner/summon_glider/schedule/test
### バルーン発射までの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## TODO: 発射できないor奈落？
execute if entity @e[type=phantom,tag=Glider,nbt=!{PortalCooldown:0}] run data modify storage tusb_remake: _ set value true

kill @e[type=phantom,tag=Glider,nbt={PortalCooldown:0}]
