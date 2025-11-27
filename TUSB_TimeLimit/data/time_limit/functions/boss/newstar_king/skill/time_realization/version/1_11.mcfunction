#> time_limit:boss/newstar_king/skill/time_realization/version/1_11

# execute atでプレイヤー起点で召喚でもいいかも、、?
execute at @a[tag=Boss_Fighting] run summon evoker_fangs ~ ~ ~ {Tags:["1_11"],Passengers:[{id:"minecraft:potion",Glowing:1b,Item:{id:"minecraft:totem_of_undying",Count:1b,tag:{CustomPotionColor:2694253,CustomPotionEffects:[{Id:2,Amplifier:2b,Duration:200},{Id:4,Amplifier:2b,Duration:200},{Id:7,Amplifier:4b,Duration:1},{Id:15,Amplifier:2b,Duration:200}]}}}]}

# tickずらしてダメージを付与
# ただこれ無敵時間貫通ができねえ

schedule function time_limit:boss/newstar_king/skill/time_realization/version/1_11_damage_target 10t