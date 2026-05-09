#> world_manager:dimension/tocult/castle/fix
#
# 

### トカルトコルデの黒いバリア解除の修正
execute in minecraft:overworld run data merge block 1388 82 2273 {Command:"/fill 1380 106 2311 1375 104 2309 minecraft:air replace minecraft:black_stained_glass"}
execute in minecraft:overworld run data merge block 1388 79 2273 {Command:"/particle flame 1377 105.5 2310.5 0.3 0.3 0.3 0.5 1000 force @a[distance=..64]"}
execute in minecraft:overworld run data merge block 1389 80 2273 {Command:"/playsound entity.ender_dragon.death master @a[distance=..64] ~ ~ ~ 1 2 0.2"}
