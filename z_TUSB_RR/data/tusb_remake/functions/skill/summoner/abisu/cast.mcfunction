#> tusb_remake:skill/summoner/abisu/cast

execute as @e[distance=..20,type=#tusb_remake:mob,tag=Enemy] at @s anchored eyes positioned ^ ^ ^ anchored feet positioned ~ ~1.0 ~ run function tusb_remake:skill/summoner/abisu/summon
execute as @e[distance=..20,type=#tusb_remake:mob,tag=Enemy] at @s run particle dragon_breath ~ ~1 ~ 1 0.7 1 0.1 80 force
execute as @e[distance=..20,type=#tusb_remake:mob,tag=Enemy] at @s run playsound block.respawn_anchor.deplete master @a[distance=..32] ~ ~ ~ 2 1 0.1
execute at @e[tag=abisu] run function tusb_remake:skill/summoner/abisu/schedule/zenntaikougeki
execute in minecraft:overworld run schedule function tusb_remake:skill/summoner/abisu/schedule/ 1t

