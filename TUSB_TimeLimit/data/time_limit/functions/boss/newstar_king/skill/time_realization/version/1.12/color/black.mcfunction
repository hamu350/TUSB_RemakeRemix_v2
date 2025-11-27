#> time_limit:boss/newstar_king/skill/time_realization/version/1.12/color/black
# 黒色AEC
# 衰弱付与

# 念のため花火残しとく
# AECからdamageのpotエフェクトを+1でこっちになる
# summon firework_rocket ~ ~1 ~ {LifeTime:15,Passengers:[{id:"minecraft:potion",Glowing:1b,Item:{id:"minecraft:black_concrete",Count:1b,tag:{CustomPotionColor:1907745,CustomPotionEffects:[{Id:20,Amplifier:4b,Duration:200},{Id:7,Amplifier:5b,Duration:1}]}}}],FireworksItem:{Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;1907745]}]}}}}

summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.031 0.039 0.059 1.5",ReapplicationDelay:20,Radius:5f,RadiusOnUse:-1f,Duration:140,WaitTime:20,Effects:[{Id:7,Amplifier:4b,Duration:1},{Id:20,Amplifier:4b,Duration:200}]}