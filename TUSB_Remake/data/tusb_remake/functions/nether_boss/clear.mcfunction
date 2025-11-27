#> tusb_remake:nether_boss/clear
# ネザーボスの攻撃タイミングの確認
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# ##* ネザーボス用エンティティ
# summon minecraft:armor_stand -1871 42 -113 {Passengers:[{id:"minecraft:end_crystal",Invulnerable:true,ShowBottom:false,BeamTarget:{X:-1871,Y:42,Z:-113}}],UUID:[I;0,1,0,5],Marker:true,Small:true,Invisible:true,Invulnerable:true,NoGravity:true,NoBasePlate:true,DisabledSlots:31,Tags:[RightEyeBeam,SystemEntity]}
# summon minecraft:armor_stand -1848 42 -113 {Passengers:[{id:"minecraft:end_crystal",Invulnerable:true,ShowBottom:false,BeamTarget:{X:-1848,Y:42,Z:-113}}],UUID:[I;0,1,0,6],Marker:true,Small:true,Invisible:true,Invulnerable:true,NoGravity:true,NoBasePlate:true,DisabledSlots:31,Tags:[LeftEyeBeam,SystemEntity]}
# summon minecraft:armor_stand ~ ~1 ~ {CustomName:'"雷"',CustomNameVisible:true,UUID:[I;0,1,0,7],Marker:true,Small:true,Invisible:true,Invulnerable:true,NoGravity:true,NoBasePlate:true,DisabledSlots:31,Tags:[FrontWaterBolt,SystemEntity]}
# summon minecraft:armor_stand ~ ~1 ~ {CustomName:'"雷"',CustomNameVisible:true,UUID:[I;0,1,0,8],Marker:true,Small:true,Invisible:true,Invulnerable:true,NoGravity:true,NoBasePlate:true,DisabledSlots:31,Tags:[FrontPoisonBolt,SystemEntity]}
# summon minecraft:armor_stand ~-0.5 ~-3 ~-0.5 {Marker:true,Small:true,Invisible:true,Invulnerable:true,NoBasePlate:true,NoGravity:true,DisabledSlots:31,CustomName:'"LeftEyeTarget"',CustomNameVisible:true,Tags:[SystemEntity,RightEyeTarget,RightEyeBlast]}
# summon minecraft:armor_stand ~-0.5 ~-3 ~-0.5 {Marker:true,Small:true,Invisible:true,Invulnerable:true,NoBasePlate:true,NoGravity:true,DisabledSlots:31,CustomName:'"LeftEyeTarget"',CustomNameVisible:true,Tags:[SystemEntity,LeftEyeTarget,LeftEyeBlast]}

#* ボスMPチェック
#* チェイン
# execute as 0-0-1-0-4 at @s positioned ~ ~-30 ~74 run playsound minecraft:entity.ender_dragon.hurt master @a[distance=..65] ~ ~ ~ 10 0.7 1
#* インパルス
execute as 0-0-1-0-4 at @s positioned ~ 21 ~73 run summon minecraft:ender_dragon ~ ~ ~ {Health:0f}
execute as 0-0-1-0-4 at @s run fill -1860 20 -51 -1859 20 -50 minecraft:end_gateway{ExactTeleport:true,ExitPortal:{X:0,Y:30,Z:-11}} replace

### チャンクロード
execute in minecraft:the_nether positioned -5 1 -34 run function tusb_remake:system/load_chunk
execute in minecraft:the_nether positioned -5 1 -24 run function tusb_remake:system/load_chunk
execute in minecraft:the_nether positioned 5 1 -34 run function tusb_remake:system/load_chunk
execute in minecraft:the_nether positioned 5 1 -24 run function tusb_remake:system/load_chunk
### ここでクリアポータルを出す
execute in minecraft:the_nether run fill -5 1 -34 5 7 -24 minecraft:air replace minecraft:bedrock
execute in minecraft:the_nether run clone -5 1 -34 5 7 -24 -5 29 -34 masked
execute in minecraft:the_nether run fill -5 1 -34 5 7 -24 minecraft:bedrock replace minecraft:air
