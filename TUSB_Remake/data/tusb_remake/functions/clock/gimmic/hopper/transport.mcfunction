#> tusb_remake:clock/gimmic/hopper/transport
# ホッパー島の吸い込みギミック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ホッパーのカウントをリセット
data modify storage tusb_remake: hopper_count set value 8

### 吸い込めー！
execute if block 173 36 -79 minecraft:hopper[enabled=true] run tp @e[x=177,y=39,z=-75,dx=-16,dy=42,dz=-16,tag=!Spawner] 174 31 -78
execute if block 182 36 -79 minecraft:hopper[enabled=true] run tp @e[x=178,y=39,z=-75,dx=16,dy=42,dz=-16,tag=!Spawner] 181 31 -78
execute if block 182 36 -70 minecraft:hopper[enabled=true] run tp @e[x=178,y=39,z=-74,dx=16,dy=42,dz=16,tag=!Spawner] 181 31 -71
execute if block 173 36 -70 minecraft:hopper[enabled=true] run tp @e[x=177,y=39,z=-74,dx=-16,dy=42,dz=16,tag=!Spawner] 174 31 -71
