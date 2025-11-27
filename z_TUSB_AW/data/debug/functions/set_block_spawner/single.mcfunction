#> debug:set_block_spawner/single

### SpawnPotentialsとSpawnDataを作る
    # AssetIdからmobを持ってくる
        data remove storage asset:context id
        data modify storage asset:context id set from storage _: _.SpawnMob[0].AssetId
        # mob asset内で_: _を使うかも知れないので避難させる
        data modify storage debug: _set_block_spawner set from storage _: _
        function #asset:mob/get_data
        data modify storage _: _ set from storage debug: _set_block_spawner
        data modify storage _: _.SpawnMob[0].data.entity set from storage asset: mob
        # データがなければ豚に
            execute unless data storage _: _.SpawnMob[0].data run data modify storage _: _.SpawnMob[0].data.entity.id set value "pig"
    # SpawnPotentialsに移す
        execute unless data storage _: _.SpawnPotentials run data modify storage _: _.SpawnPotentials set from storage _: _.SpawnMob
    # SpawnDataに突っ込む
        execute unless data storage _: _.SpawnData run data modify storage _: _.SpawnData.entity set from storage _: _.SpawnPotentials[0].data.entity
    # 一回湧きだったらSpawnPotentialsを消し飛ばす
        execute if data storage _: {_:{Once:true}} run data remove storage _: _.SpawnPotentials

# 召喚、設置、データ適応
execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {NoBasePlate:true,Marker:true,Small:true,NoAI:true,Invisible:true,Invulnerable:true,Tags:["Spawner","SystemEntity","this"]}
setblock ~ ~ ~ spawner replace
data modify block ~ ~ ~ {} merge from storage _: _
execute store result score @e[limit=1,tag=this] SpawnerId run data get storage _: _.SpawnMob[0].AssetId

# thisは元functionで消します