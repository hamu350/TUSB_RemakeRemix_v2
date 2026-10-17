#> debug:set_spawner/single

# idを他のリストに移す

### SpawnPotentialsとSpawnDataを作る
    # idを取ってくる
        data remove storage asset:context id
        data modify storage asset:context id set from storage _: _.SpawnMob.AssetId
    # mob asset内で_: _を使うかも知れないので避難させる
        data modify storage debug: _set_spawner set from storage _: _
    # idからmobデータを取得
        data remove storage asset: mob
        function #asset:mob/get_data
    # mobデータが取得できなければエラー
        execute unless data storage asset: mob run tellraw @s {"text": "§4そのIDは存在しません"}
    # 避難させたデータを戻す
        data modify storage _: _ set from storage debug: _set_spawner
    # mobデータを入れる
        data modify storage _: _.SpawnMob.data.entity set from storage asset: mob
    # データがなければ豚に
        execute unless data storage _: _.SpawnMob.data run data modify storage _: _.SpawnMob.data.entity.id set value "pig"
    # SpawnPotentialsに移す
        execute unless data storage _: _.SpawnPotentials run data modify storage _: _.SpawnPotentials append from storage _: _.SpawnMob
    # SpawnDataに突っ込む
        execute unless data storage _: _.SpawnData run data modify storage _: _.SpawnData.entity set from storage _: _.SpawnPotentials[0].data.entity
    # 一回湧きだったらSpawnPotentialsを消し飛ばす
        execute if data storage _: {_:{Once:true}} run data remove storage _: _.SpawnPotentials

# スポナーの防具立てを召喚(スポナーも乗っける)
    execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {NoBasePlate:true,Marker:true,Small:true,Invisible:true,Invulnerable:true,Tags:["Spawner","SystemEntity","this"],Passengers:[{SpawnCount:0,id:"spawner_minecart",Invulnerable:true,Tags:["SystemEntity","Spawner","SpawnerCore","TypeChecked"]}]}
# スポナーのデータをmergeします
    execute as @e[limit=1,tag=this] on passengers run data modify entity @s {} merge from storage _: _
# 防具立てにidを設定します
    execute store result score @e[limit=1,tag=this] SpawnerId run data get storage _: _.SpawnMob.AssetId

# thisは元functionで消します
