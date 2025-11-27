#> time_limit:boss/newstar_king/skill/time_realization/version/1_17

# potion summon
execute at @a[tag=Boss_Fighting] run summon falling_block ~ ~2 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{vertical_direction:"down"}},Time:1,DropItem:0b,Passengers:[{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{id:"minecraft:amethyst_cluster",CustomPotionColor:771802,CustomPotionEffects:[{Id:7,Amplifier:5b,Duration:1}]}}}]}
