#> time_limit:boss/newstar_king/skill/time_realization/version/1_16

# 強化ピグリンはプレイヤー起点でいいかなって
# ゾンビ化ならないようにできるらしい
# オフハンドにアイテムをもたせると勝手にしまいやがる
# isbaby:0bつけろ
# 8個ピグリンのインベントリに入れればソレ以上入れない
# えー捨てやがります
# ソウル系はあり

#execute at @a[tag=Boss_Fighting] run summon spawner_minecart ~ ~2 ~ {Invulnerable:1b,SpawnCount:4,SpawnRange:5,Delay:0,MaxNearbyEntities:10,RequiredPlayerRange:100,MinSpawnDelay:20,MaxSpawnDelay:20,SpawnData:{entity:{id:"minecraft:zombified_piglin",Health:150f,IsBaby:0b,AngerTime:2147483647,HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s},{id:"minecraft:fire_aspect",lvl:5s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:3s},{id:"minecraft:protection",lvl:5s}]}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:3s},{id:"minecraft:protection",lvl:5s}]}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:3s},{id:"minecraft:protection",lvl:5s}]}},{id:"minecraft:golden_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:3s},{id:"minecraft:protection",lvl:5s}]}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:150},{Name:"generic.follow_range",Base:60},{Name:"generic.knockback_resistance",Base:1},{Name:"generic.attack_damage",Base:10}]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}


# 強化ピグリン艦隊作ってもいいよな

# 3人くらいで動くやつ


# ブルート1 ピグリン2
# 防具には束縛の呪いつける

# ブルートデータ
# ネザライト一式withネザライト剣


# ピグリンデータ
# 金一式、剣持ちとクロスボウ持ちがいてもいいかも

execute at @a[tag=Boss_Fighting] run summon spawner_minecart ~ ~2 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:1,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:piglin_brute",Health:500f,IsBaby:0b,IsImmuneToZombification:1b,HandItems:[{id:"minecraft:golden_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:knockback",lvl:1s},{id:"minecraft:fire_aspect",lvl:5s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:golden_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:10s},{id:"minecraft:fire_protection",lvl:10s},{id:"minecraft:feather_falling",lvl:10s},{id:"minecraft:blast_protection",lvl:10s},{id:"minecraft:projectile_protection",lvl:10s},{id:"minecraft:binding_curse",lvl:1s}]}},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],Attributes:[{Name:"generic.max_health",Base:150},{Name:"generic.knockback_resistance",Base:1},{Name:"generic.attack_damage",Base:10},{Name:"generic.armor",Base:20}]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}

execute at @a[tag=Boss_Fighting] run summon spawner_minecart ~ ~2 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:2,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:piglin",Health:350f,IsBaby:0b,IsImmuneToZombification:1b,HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:punch",lvl:1s},{id:"minecraft:multishot",lvl:1s},{id:"minecraft:piercing",lvl:3s},{id:"minecraft:quick_charge",lvl:3s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:golden_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:10s},{id:"minecraft:fire_protection",lvl:10s},{id:"minecraft:feather_falling",lvl:10s},{id:"minecraft:blast_protection",lvl:10s},{id:"minecraft:projectile_protection",lvl:10s},{id:"minecraft:binding_curse",lvl:1s}]}},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],Attributes:[{Name:"generic.max_health",Base:150},{Name:"generic.knockback_resistance",Base:1},{Name:"generic.armor",Base:20}]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}