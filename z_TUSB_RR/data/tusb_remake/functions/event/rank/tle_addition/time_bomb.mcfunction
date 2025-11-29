#> tusb_remake:event/rank/tle_addition/time_bomb

# 一定時間内に倒したらloot、倒さないと爆発

me 「あの爆弾…怪しい！」


# 倒したら経験値を多量落とすがーみたいなのでいいか。

# 上にスポナーつけて湧くまでにーって感じでいいかもねw

summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:15,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:silverfish",PortalCooldown:301,Health:300f,Tags:["CooldownRequired"],Attributes:[{Name:generic.max_health,Base:300},{Name:generic.movement_speed,Base:0}],custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},Passengers:[{id:"minecraft:creeper",DeathLootTable:"usb:events/time_bomb",Health:300f,ExplosionRadius:5b,Fuse:300,ignited:1b,Tags:["TypeChecked","RidingRequired"],Attributes:[{Name:generic.max_health,Base:300}]}]}}}