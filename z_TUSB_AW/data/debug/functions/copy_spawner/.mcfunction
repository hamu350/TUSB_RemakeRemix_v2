#> debug:copy_spawner/
# 最寄りのスポナーをコピーします

function oh_my_dat:please
execute as @e[tag=Spawner,limit=1,sort=nearest,type=armor_stand,predicate=tusb_remake:is_vechicle_spawner] run function debug:copy_spawner/copy_entity
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].set_spawner set from storage _: _

# 取得した情報を表示
tellraw @s {"translate": "Delay:%s\nMin-Max:%s-%s\nCount:%s\nRange:%s\nReqRange:%s\nId:%s","with": [{"storage": "_:", "nbt": "_.Delay"},{"storage": "_:", "nbt": "_.MinSpawnDelay"},{"storage": "_:", "nbt": "_.MaxSpawnDelay"},{"storage": "_:", "nbt": "_.SpawnCount"},{"storage": "_:", "nbt": "_.SpawnRange"},{"storage": "_:", "nbt": "_.RequiredPlayerRange"},{"score": {"name": "@e[tag=Spawner,limit=1,sort=nearest,type=armor_stand,nbt={Passengers:[{id:\"minecraft:spawner_minecart\"}]}]","objective": "SpawnerId"}}]}
data remove storage _: _