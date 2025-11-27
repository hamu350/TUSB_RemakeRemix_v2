#> time_limit:boss/newstar_king/skill/time_realization/version/1_15

# AECの色形態のやつにしろ
# はち
#summon bee ~ ~ ~ {Health:250f,Passengers:[{id:"minecraft:spawner_minecart",Invulnerable:1b,SpawnCount:4,SpawnRange:5,Delay:0,MinSpawnDelay:40,MaxSpawnDelay:40,MaxNearbyEntities:15,RequiredPlayerRange:60,SpawnData:{entity:{id:"minecraft:potion",Item:{id:"minecraft:honeycomb",Count:1b,tag:{CustomPotionColor:1412790,CustomPotionEffects:[{Id:7,Amplifier:3b,Duration:1},{Id:17,Amplifier:3b,Duration:200},{Id:20,Amplifier:3b,Duration:200}]}}},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}],HandItems:[{},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:1733028}}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.085F],Attributes:[{Name:generic.max_health,Base:250},{Name:generic.follow_range,Base:60},{Name:generic.knockback_resistance,Base:1}]}

# execute at @a run summon spawner_minecart ~ ~7 ~ {Invulnerable:1b,SpawnCount:2,SpawnRange:5,Delay:0,MaxNearbyEntities:10,RequiredPlayerRange:100,MinSpawnDelay:20,MaxSpawnDelay:20,SpawnData:{entity:{id:"minecraft:bee",Health:200f,Passengers:[{id:"minecraft:spawner_minecart",Invulnerable:1b,SpawnCount:4,SpawnRange:5,Delay:0,MinSpawnDelay:40,MaxSpawnDelay:60,MaxNearbyEntities:15,RequiredPlayerRange:100,SpawnData:{entity:{id:"minecraft:potion",Item:{id:"minecraft:honeycomb",Count:1b,tag:{CustomPotionColor:1412790,CustomPotionEffects:[{Id:7,Amplifier:3b,Duration:1},{Id:17,Amplifier:3b,Duration:200},{Id:20,Amplifier:3b,Duration:200}]}}},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}],Attributes:[{Name:generic.max_health,Base:200},{Name:generic.follow_range,Base:60},{Name:generic.knockback_resistance,Base:1}]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}

# armorstandwith 養蜂箱をだして色々やりたいんだけれども
# そこからはちが出てくるから根本を倒さないといけないみたいな

# それだったらアマスタじゃなくて元mobがいる透明mobでええがな

# noaiにしたひあんでっとを起点にすれば良いんじゃないスカね

# ハチを召喚して ^ ^ ^ で動かす
# アマスタの範囲外に出たらkill
# ハチは攻撃無効やenemyタグ外したりなどをしておく
# ハチが存在している限りschedule loopをし、
# ハチの近くにいるプレイヤーにはダメージを与えるようにする

# summon bee ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["1_15_bee"],Rotation:[0.0f,0.0f]}



# 一応これで8方向からハチが出るっちゃでるんだけど
# もう少し距離を開けたほうが良いわね

# 7/2x1.4142 = 4.9497

# 10/2x1.4142 = 7.071

# tag=Boss_Fighting

execute at @a[tag=Boss_Fighting] run summon bee ~ ~0.75 ~10 {NoAI:1b,Invulnerable:1b,Tags:["1_15_bee","CooldownRequired"],Rotation:[180.0f,0.0f],PortalCooldown:50}
execute at @a[tag=Boss_Fighting] run summon bee ~7.071 ~0.75 ~7.071 {NoAI:1b,Invulnerable:1b,Tags:["1_15_bee","CooldownRequired"],Rotation:[135.0f,0.0f],PortalCooldown:50}
execute at @a[tag=Boss_Fighting] run summon bee ~10 ~0.75 ~ {NoAI:1b,Invulnerable:1b,Tags:["1_15_bee","CooldownRequired"],Rotation:[90.0f,0.0f],PortalCooldown:50}
execute at @a[tag=Boss_Fighting] run summon bee ~7.071 ~0.75 ~-7.071 {NoAI:1b,Invulnerable:1b,Tags:["1_15_bee","CooldownRequired"],Rotation:[45.0f,0.0f],PortalCooldown:50}
execute at @a[tag=Boss_Fighting] run summon bee ~ ~0.75 ~-10 {NoAI:1b,Invulnerable:1b,Tags:["1_15_bee","CooldownRequired"],Rotation:[0.0f,0.0f],PortalCooldown:50}
execute at @a[tag=Boss_Fighting] run summon bee ~-7.071 ~0.75 ~-7.071 {NoAI:1b,Invulnerable:1b,Tags:["1_15_bee","CooldownRequired"],Rotation:[-45.0f,0.0f],PortalCooldown:50}
execute at @a[tag=Boss_Fighting] run summon bee ~-10 ~0.75 ~ {NoAI:1b,Invulnerable:1b,Tags:["1_15_bee","CooldownRequired"],Rotation:[-90.0f,0.0f],PortalCooldown:50}
execute at @a[tag=Boss_Fighting] run summon bee ~-7.071 ~0.75 ~7.071 {NoAI:1b,Invulnerable:1b,Tags:["1_15_bee","CooldownRequired"],Rotation:[-135.0f,0.0f],PortalCooldown:50}


# 出した後にダメージ判定functionに入りながら一定のageなら発射みたいな感じやなー

# 元となる数字に/2して√2(1.4142)をかければいい

# age20とかで発射でもいいけどな

schedule function time_limit:boss/newstar_king/skill/time_realization/version/1.15/condition_check 1t