#> skill:job_skill/summoner/abisu/summon

summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:obsidian"},Time:1,DropItem:false,HurtEntities:false,FallHurtMax:25,FallHurtAmount:25f,FallDistance:1f,Tags:[abisu,Tarai]}
execute as @e[distance=0,tag=abisu] run data merge entity @s {BlockState:{Name:"minecraft:lily_pad"},Tags:[abisu,Tarai]}

