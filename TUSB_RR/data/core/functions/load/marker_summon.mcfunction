#> core:load/marker_summon
#
# 
#
# @within function core:load/once

execute positioned -2769 223 -280 run kill @e[tag=Boss_MarkerB,distance=..3]
execute positioned -2986 69 -41 run kill @e[tag=Boss_MarkerC,distance=..3]

execute in overworld unless entity @e[tag=Boss_MarkerB] run summon minecraft:armor_stand -2769 223 -280 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Boss_MarkerB","CantUseEnderChestAreaLarge","CantTp"]}
execute in overworld unless entity @e[tag=Boss_MarkerC] run summon minecraft:armor_stand -2986 69 -41 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Boss_MarkerC","CantUseEnderChestAreaLarge","CantTp"]}

execute in overworld run forceload remove -2769 -280 -2769 -280
execute in overworld run forceload remove -2986 -41 -2986 -41
