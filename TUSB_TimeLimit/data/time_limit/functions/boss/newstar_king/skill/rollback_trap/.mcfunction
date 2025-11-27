#> time_limit:boss/newstar_king/skill/rollback_trap/

# ロールバックトラップ
# デバフ+バフ解除+ダメージ+MP減少
me はロールバック・トラップを唱えた！
# arrow召喚して地面についたらaecだしてarrowkill
# プレイヤー座標にスポナー召喚
execute at @a[tag=Boss_Fighting] run summon spawner_minecart ~ ~2 ~ {Invulnerable:1b,SpawnCount:3,SpawnRange:10,Delay:0,MaxNearbyEntities:16,RequiredPlayerRange:100,MinSpawnDelay:20,MaxSpawnDelay:20,SpawnData:{entity:{id:"minecraft:arrow",pickup:0b,life:0,damage:0d,SoundEvent:"item.crossbow.quick_charge_2",Tags:["rollback_trap"]}}}
# arrowを出した後はarrowが地面についたのを検知してtrapを召喚する
# 1tickじゃいけないのに2tickだといけるｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗ
# トロッコマインカート召喚→そこから矢を出すに1tickじゃ足りなくて2tick必要説。
schedule function time_limit:boss/newstar_king/skill/rollback_trap/check_arrow_ground 2t replace