#> tusb_remake:load/marker_summon
#
#

execute in overworld unless entity @e[tag=Boss_MarkerC] run summon minecraft:armor_stand -2986 69 -41 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Boss_MarkerC","CantUseEnderChestAreaLarge"]}

execute in overworld run forceload remove -2986 -41 -2986 -41
