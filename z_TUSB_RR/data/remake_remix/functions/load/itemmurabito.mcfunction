#> remake_remix:load/itemmurabito
#
# 
#

execute positioned -2740 91 -361 as @e[type=villager,sort=nearest,limit=1,distance=..5] run data modify entity @s Offers set value {}
forceload remove -2740 -361 -2740 -361