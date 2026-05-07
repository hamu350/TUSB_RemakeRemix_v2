#> skill:job_skill/white_mage/syawa_/schedule/fly

playsound entity.experience_orb.pickup master @a[distance=..32] ~ ~ ~ 0.3 2 0.05
particle end_rod ~ ~ ~ 1 1 1 0.1 3 force

execute as @e[distance=..10,type=#lib:mob,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]}] at @s run function skill:job_skill/white_mage/holy/schedule/hit

data modify storage tusb_remake: _ set value true
