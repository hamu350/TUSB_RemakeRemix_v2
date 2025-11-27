#> tusb_remake:portal/plate
# 
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: press set value false

### 木製以外の感圧板を踏んでる
execute if block ~-0.238 ~0.75 ~-0.238 #tusb_remake:pressure_plate unless block ~-0.238 ~0.75 ~-0.238 #tusb_remake:pressure_plate[power=0] run data modify storage tusb_remake: press set value true
execute if block ~0.238 ~0.75 ~-0.238 #tusb_remake:pressure_plate unless block ~0.238 ~0.75 ~-0.238 #tusb_remake:pressure_plate[power=0] run data modify storage tusb_remake: press set value true
execute if block ~-0.238 ~0.75 ~0.238 #tusb_remake:pressure_plate unless block ~-0.238 ~0.75 ~0.238 #tusb_remake:pressure_plate[power=0] run data modify storage tusb_remake: press set value true
execute if block ~0.238 ~0.75 ~0.238 #tusb_remake:pressure_plate unless block ~0.238 ~0.75 ~0.238 #tusb_remake:pressure_plate[power=0] run data modify storage tusb_remake: press set value true

execute if data storage tusb_remake: {press:true} run tag @s add PortalCheck

# ### スキル設定場から交易島
# execute if data storage tusb_remake: {press:true} if entity @s[nbt={Dimension:"minecraft:overworld"}] positioned -2711 91 -383 align xyz if entity @s[dx=1,dy=0,dz=1] run tp @s -53 23.5 34

# ### スキル設定場からエクストラドメイン
# execute if data storage tusb_remake: {press:true} if entity @s[nbt={Dimension:"minecraft:overworld"}] positioned -2722 89 -268 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2721 43.5 -33
# ### エクストラドメインからスキル設定場
# execute if data storage tusb_remake: {press:true} if entity @s[nbt={Dimension:"minecraft:overworld"}] positioned -2721 43 -38 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2722 88.5 -282

advancement revoke @s only tusb_remake:portal/iron
advancement revoke @s only tusb_remake:portal/gold
advancement revoke @s only tusb_remake:portal/stone
