#> tusb_remake:load/update/1.1.4/schedule
#
# v1.1.3からv1.1.4へのアップデート

tag @e[tag=Boss_MarkerC] add Garbage
execute in overworld run summon minecraft:armor_stand -2951 212 -33 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["CantUseEnderChestAreaLarge"]}

schedule function tusb_remake:load/marker_summon 1t

# forceloadを消す
    execute in overworld run forceload remove -2951 -33 -2951 -33
