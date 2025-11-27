#> tusb_remake:armor_stand/tent/1
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.zombie.attack_wooden_door master @a[distance=..16] ~ ~ ~ 1 0.5 1
## チェストは空っぽ！
execute if score @s TUSB matches 243.. run data modify block -1919 14 -74 Items set value []
execute if score @s TUSB matches 243.. run data modify block -1919 14 -73 Items set value []
execute if score @s TUSB matches 243.. run data modify block -1921 14 -74 Items set value []
execute if score @s TUSB matches 243.. run data modify block -1921 14 -73 Items set value []
execute if score @s TUSB matches 243.. run data modify block -1919 14 -70 Items set value [{Count:64b,Slot:1b,id:"minecraft:oak_fence"}]

execute if score @s TUSB matches 243.. run clone -1923 13 -75 -1917 17 -69 ~-3 ~-1 ~-3 masked
execute if score @s TUSB matches 243.. run clone -1923 13 -75 -1917 17 -69 ~-3 ~-1 ~-3 masked
execute if score @s TUSB matches 243.. run kill @s
