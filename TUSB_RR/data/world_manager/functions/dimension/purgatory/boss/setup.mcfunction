#> tusb_remake:nether_boss/setup
# ネザーボスのおめめの準備
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as 0-0-1-0-5 at @s run kill @e[distance=..3]
execute as 0-0-1-0-6 at @s run kill @e[distance=..3]

execute in minecraft:the_nether run summon minecraft:armor_stand -1871 42 -113 {Passengers:[{id:"minecraft:end_crystal",Invulnerable:true,ShowBottom:false,BeamTarget:{X:-1871,Y:42,Z:-113}}],UUID:[I;0,1,0,5],Marker:true,Small:true,Invisible:true,Invulnerable:true,NoGravity:true,NoBasePlate:true,DisabledSlots:31,Tags:[RightEyeBeam,SystemEntity]}
execute in minecraft:the_nether run summon minecraft:armor_stand -1848 42 -113 {Passengers:[{id:"minecraft:end_crystal",Invulnerable:true,ShowBottom:false,BeamTarget:{X:-1848,Y:42,Z:-113}}],UUID:[I;0,1,0,6],Marker:true,Small:true,Invisible:true,Invulnerable:true,NoGravity:true,NoBasePlate:true,DisabledSlots:31,Tags:[LeftEyeBeam,SystemEntity]}

# ##* ネザーボス用エンティティ
# summon minecraft:armor_stand ~ ~1 ~ {CustomName:'"雷"',CustomNameVisible:true,UUID:[I;0,1,0,7],Marker:true,Small:true,Invisible:true,Invulnerable:true,NoGravity:true,NoBasePlate:true,DisabledSlots:31,Tags:[FrontWaterBolt,SystemEntity]}
# summon minecraft:armor_stand ~ ~1 ~ {CustomName:'"雷"',CustomNameVisible:true,UUID:[I;0,1,0,8],Marker:true,Small:true,Invisible:true,Invulnerable:true,NoGravity:true,NoBasePlate:true,DisabledSlots:31,Tags:[FrontPoisonBolt,SystemEntity]}
# summon minecraft:armor_stand ~-0.5 ~-3 ~-0.5 {Marker:true,Small:true,Invisible:true,Invulnerable:true,NoBasePlate:true,NoGravity:true,DisabledSlots:31,CustomName:'"LeftEyeTarget"',CustomNameVisible:true,Tags:[SystemEntity,RightEyeTarget,RightEyeBlast]}
# summon minecraft:armor_stand ~-0.5 ~-3 ~-0.5 {Marker:true,Small:true,Invisible:true,Invulnerable:true,NoBasePlate:true,NoGravity:true,DisabledSlots:31,CustomName:'"LeftEyeTarget"',CustomNameVisible:true,Tags:[SystemEntity,LeftEyeTarget,LeftEyeBlast]}
