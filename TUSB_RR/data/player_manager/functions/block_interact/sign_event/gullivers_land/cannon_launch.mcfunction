#> tusb_remake:sign_event/gullivers_land/cannon_launch
# ガリバー大砲の発射
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound block.end_gateway.spawn master @a[distance=..32] -35 71 762 3 1.4 1
particle explosion_emitter -35 71 762 0 1 0 0 5 force
particle explosion -29 77 762 1.2 1.2 1.2 0 300
execute as @e[tag=CannonBullet2] positioned -32 72 764 positioned ~6 ~6 ~-2 run tp @s ~ ~ ~
execute as @e[tag=CannonBullet2] run data merge entity @s {Motion:[1.4d,1.4d,0d],Tags:[FloatingRequired,Cannon,SystemEntity,TypeChecked],NoGravity:false,OnGround:false,FallDistance:-10000f}
summon minecraft:item -34.2 71.0 762 {PickupDelay:32767s,Age:-32768s,Invulnerable:true,Item:{id:"minecraft:fire_charge",Count:1b},Tags:[CannonBullet2,SystemEntity,TypeChecked],NoGravity:true,Passengers:[{id:"minecraft:horse",Tags:[CannonSeat,RidingRequired,SystemEntity,TypeChecked],ActiveEffects:[{Id:14,Duration:2147483647,Amplifier:0b,ShowParticles:false}],Rotation:[-90f,-10f],Silent:true,Tame:true,NoAI:true,Invulnerable:true}]}

advancement revoke @s only tusb_remake:gullivers_cannon
