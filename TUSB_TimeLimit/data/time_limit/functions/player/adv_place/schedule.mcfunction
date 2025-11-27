#> time_limit:player/adv_place/schedule
execute as @a[gamemode=!creative,gamemode=!spectator,advancements={time_limit:time_limit/shulker_adv=true}] at @s run function time_limit:player/adv_place/init
advancement revoke @s[advancements={time_limit:time_limit/shulker_adv=true}] only time_limit:time_limit/shulker_adv