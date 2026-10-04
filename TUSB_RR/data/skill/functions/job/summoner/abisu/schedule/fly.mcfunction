#> skill:job_skill/summoner/abisu/schedule/fly

# playsound entity.experience_orb.pickup master @a[distance=..32] ~ ~ ~ 0.3 2 0.05
# particle end_rod ~ ~ ~ 1 1 1 0.1 3 force

data modify storage tusb_remake: hit set value false
execute positioned ~-0.5 ~ ~-0.5 as @e[dy=0,type=#lib:mob,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]}] at @s run function skill:job_skill/summoner/abisu/schedule/hit

### 当たっていたらタライを消す
execute if data storage tusb_remake: {hit:true} run kill @s

data modify storage tusb_remake: _ set value true

