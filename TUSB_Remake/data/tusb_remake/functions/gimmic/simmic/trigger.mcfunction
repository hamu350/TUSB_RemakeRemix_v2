#> tusb_remake:gimmic/simmic/trigger
# シミック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## シミック修正
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:chain_command_block{Command:"シミック"} replace minecraft:command_block{Command:'/summon FallingSand ~ ~2 ~ {Block:"minecraft:skull",Data:1b,TileEntityData:{Rot:0b,Owner:{Name:"MHF_Chest",Id:"73d4e068-3a6d-4c8b-8f85-3323546955c4",Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NTc3Mzk1OTkyNDksInByb2ZpbGVJZCI6IjczZDRlMDY4M2E2ZDRjOGI4Zjg1MzMyMzU0Njk1NWM0IiwicHJvZmlsZU5hbWUiOiJNSEZfQ2hlc3QiLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzZmNjhkNTA5YjVkMTY2OWI5NzFkZDFkNGRmMmU0N2UxOWJjYjFiMzNiZjFhN2ZmMWRkYTI5YmZjNmY5ZWJmIn19fQ==",Signature:"m2RziuTQMmZsP8FxZiVzKKRvJ1/EtQk2tyw5JFU9zlymJse1VYFiRLoOBdnmEApRdup+NWnno3dTY0Rl3rPm+UDuea5MaIo9UmZJnKaBxVtxKkjoPZcOu3DHlBGt43yR26TG6x2Musn12405MQlY8dvl/i0VERkmiBI9Wb9qaFotSGtniv/jjLkJJzbTolnyqBLURmQz/MRz7qyisUEdtPte9mvp+ycJMW+AbIYf4kYHHgCSFOyIoZYMdLke/a40Ni+z76VIuh360WutprrhjT2maTkMTS7daoh/d/Ji+5nTlFrJB820nqYSBn/VVWYpJzHDYD8I2ii1NiataJHq1gP6shNGLgS7kMjp0YsoPBhf4nGAhznvk1+um5vpShvWLWnFCL6r+uhg7UW/wuGojzWFljuhzoBIV1zHzf7mkPbC86/5W0kLIMz49FSoPISGp07y7fTvftgL/mzsOxPDcHLZ4jWGBwmvHLlnYpaYBSVbgNKhbYLx0gkv7F0zIvzrKn2mxLUlywAOqnC+PBJZucdD8fDlRkoO5PzTaWbOClnWta0bvC8XWG4YuGZhQDlLExxFo/WqIUsk6gPRLuLAdZeuYoxnc97px0w6QYxF2CjcSnC3c7iie+YBszAQuADH6ctb6HDFUZGijCcrBQkuYMkzyltUqmRyCxcN7y+mKt4="}]}},SkullType:3b},Time:1,Passengers:[{id:"FallingSand",Block:"minecraft:trapped_chest",DropItem:false},{id:Silverfish,CustomName:シミック,CustomNameVisible:true,Health:439f,Attributes:[{Name:"generic.maxHealth",Base:439d},{Name:"generic.attackDamage",Base:43.9d},{Name:"generic.armor",Base:43.9d},{Name:"generic.followRange",Base:43.9d},{Name:"generic.knockbackResistance",Base:0.439d},{Name:"generic.movementSpeed",Base:0.1439d}],PersistenceRequired:true,DeathLootTable:"usb:entities/table/mob4"}]}',auto:false,powered:true}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block{Command:"function tusb_remake:gimmic/simmic/summon",auto:true} replace minecraft:chain_command_block{Command:"シミック"}

## 盗賊の鍵の修正
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:chain_command_block{Command:"盗賊の鍵"} replace minecraft:command_block{Command:"/setblock ~ ~-1 ~ minecraft:redstone_block 0",auto:false,powered:true}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block{Command:"/setblock ~ ~-1 ~ minecraft:redstone_block",auto:true} replace minecraft:chain_command_block{Command:"盗賊の鍵"}

fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:chain_command_block{Command:"盗賊の鍵↓"} replace minecraft:command_block{Command:"/clone ~ ~-1 ~ ~ ~-1 ~ ~ ~4 ~ ",auto:false}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block{Command:"/clone ~ ~-1 ~ ~ ~-1 ~ ~ ~4 ~ replace",auto:true} replace minecraft:chain_command_block{Command:"盗賊の鍵↓"}

### トカルトコルデの黒いバリア解除の修正
execute in minecraft:overworld run data merge block 1388 82 2273 {Command:"/fill 1380 106 2311 1375 104 2309 minecraft:air replace minecraft:black_stained_glass"}
execute in minecraft:overworld run data merge block 1388 81 2273 {Command:"/fill 1387 85 2269 1392 85 2274 minecraft:glowstone replace minecraft:cyan_stained_hardened_clay"}
execute in minecraft:overworld run data merge block 1388 79 2273 {Command:"/particle flame 1377 105.5 2310.5 0.3 0.3 0.3 0.5 1000 force @a[distance=..64]"}
execute in minecraft:overworld run data merge block 1389 80 2273 {Command:"/playsound entity.ender_dragon.death master @a[distance=..64] ~ ~ ~ 1 2 0.2"}

advancement revoke @s only tusb_remake:gimmic/simmic/trigger
