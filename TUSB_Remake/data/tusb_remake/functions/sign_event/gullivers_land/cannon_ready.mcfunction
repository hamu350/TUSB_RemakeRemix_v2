#> tusb_remake:sign_event/gullivers_land/cannon_ready
# ガリバー大砲の準備
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

kill @e[distance=..16,tag=CannonSeat]
kill @e[distance=..16,tag=CannonBullet]
summon minecraft:item -34.2 71.0 762 {PickupDelay:32767s,Age:-32768s,Invulnerable:true,Item:{id:"minecraft:fire_charge",Count:1b},Tags:[CannonBullet2,SystemEntity,TypeChecked],NoGravity:true,Passengers:[{id:"minecraft:horse",Tags:[CannonSeat,RidingRequired,SystemEntity,TypeChecked],ActiveEffects:[{Id:14,Duration:2147483647,Amplifier:0b,ShowParticles:false}],Rotation:[-90f,-10f],Silent:true,Tame:true,NoAI:true,Invulnerable:true}]}
# tellraw @s {"bold":true,"underlined":true,"text":"もう一度右クリックしてください"}
