#> asset:mob/0318.magic_bullet_shooter/data/2.data_set

# 最終的にPassengersやスポナーの中身に使える形になればそこまでがどのような形でもいい

# dataを初期化
data remove storage asset: mob

# ここに取ってきたデータを入れる。取得用コマンド：/data get entity @e[type=minecraft:spawner_minecart,limit=1,sort=nearest,distance=..6] SpawnData.entity
# 村人
# ・コウモリ
# ・・マグマキューブ(魔弾の射手)(ワープ)
# ・・・スポナー1(魔のワゴン)
# ・・・スポナー2(魔のワゴン)
# ・・・ラインオーラ
# ・・・死亡時ポーション
# ・・魔弾の射手
data modify storage asset: mob set value {Passengers: [{Passengers: [{NoGravity: 1b, Passengers: [{RequiredPlayerRange: 20s, MaxNearbyEntities: 3s, CustomDisplayTile: 1b, SpawnCount: 1s, DisplayState: {Properties: {facing: "down", enabled: "true"}, Name: "minecraft:hopper"}, DisplayTile: "minecraft:hopper", Invulnerable: 1b, SpawnData: {}, MaxSpawnDelay: 40s, Glowing: 1b, Delay: -1s, DisplayOffset: -14, CustomName: '{"text":"魔のワゴン"}', DeathLootTable: "empty", id: "minecraft:spawner_minecart", SpawnRange: 0s, MinSpawnDelay: 10s, SpawnPotentials: [{data: {entity: {ParticleParam2: 2, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ01"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 1b, Amplifier: 1b}, {Duration: 10, Id: 25b, Amplifier: 15b}]}}, weight: 1}, {data: {entity: {ParticleParam2: 14, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ02"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 1b, Amplifier: 5b}, {Duration: 10, Id: 25b, Amplifier: 7b}]}}, weight: 3}, {data: {entity: {ParticleParam2: 1, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ03"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 1b, Amplifier: 10b}, {Duration: 10, Id: 25b, Amplifier: 4b}]}}, weight: 5}, {data: {entity: {ParticleParam2: 4, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ04"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 1b, Amplifier: 20b}, {Duration: 10, Id: 25b, Amplifier: 2b}]}}, weight: 7}, {data: {entity: {NoGravity: 1b, Motion: [0.0d, 0.1d, 0.0d], RequiredPlayerRange: 80s, MaxNearbyEntities: 99s, CustomDisplayTile: 1b, SpawnCount: 16s, DisplayState: {Properties: {east: "false", south: "false", north: "false", west: "false", up: "false", age: "0"}, Name: "minecraft:fire"}, DisplayTile: "minecraft:fire", Invulnerable: 1b, SpawnData: {}, MaxSpawnDelay: 6s, PortalCooldown: 10, Delay: -1s, DisplayOffset: 14, CustomName: '{"text":"LWS01"}', DeathLootTable: "empty", id: "minecraft:spawner_minecart", SpawnRange: 16s, Tags: ["CooldownRequired"], MinSpawnDelay: 6s, SpawnPotentials: [{data: {entity: {Particle: "explosion", Radius: 0.01f, ReapplicationDelay: 0, Passengers: [{id: "minecraft:ender_pearl", Glowing: 1b}, {NoGravity: 1b, CustomName: '{"text":"DeathRay"}', Health: 200.0f, Attributes: [{Base: 200.0d, Name: "generic.max_health"}, {Base: 10.0d, Name: "generic.attack_damage"}, {Base: 1.0d, Name: "generic.knockback_resistance"}, {Base: 80.0d, Name: "generic.follow_range"}], Silent: 1b, DeathLootTable: "empty", id: "minecraft:guardian", ActiveEffects: [{ShowParticles: 0b, Duration: 2147483647, Id: 14b, Amplifier: 127b}]}], CustomName: '{"text":"ファンタズムゲート"}', RadiusOnUse: 0.0f, Duration: 40, id: "minecraft:area_effect_cloud", WaitTime: 200, Effects: [{Duration: 80, Id: 7b, Amplifier: 10b}]}}, weight: 1}]}}, weight: 1}, {data: {entity: {NoGravity: 1b, Motion: [0.0d, 0.1d, 0.0d], RequiredPlayerRange: 80s, MaxNearbyEntities: 99s, CustomDisplayTile: 1b, SpawnCount: 16s, DisplayState: {Properties: {east: "false", south: "false", north: "false", west: "false", up: "false", age: "0"}, Name: "minecraft:fire"}, DisplayTile: "minecraft:fire", Invulnerable: 1b, SpawnData: {}, MaxSpawnDelay: 6s, PortalCooldown: 10, Delay: -1s, DisplayOffset: 14, CustomName: '{"text":"LWS02"}', DeathLootTable: "empty", id: "minecraft:spawner_minecart", SpawnRange: 16s, Tags: ["CooldownRequired"], MinSpawnDelay: 6s, SpawnPotentials: [{data: {entity: {Particle: "explosion", Radius: 0.01f, ReapplicationDelay: 0, Passengers: [{id: "minecraft:ender_pearl", Glowing: 1b}, {NoGravity: 1b, CustomName: '{"text":"QuatreShot"}', Health: 200.0f, Color: 16b, Attributes: [{Base: 200.0d, Name: "generic.max_health"}, {Base: 1.0d, Name: "generic.knockback_resistance"}, {Base: 80.0d, Name: "generic.follow_range"}], Silent: 1b, DeathLootTable: "empty", id: "minecraft:shulker", ActiveEffects: [{ShowParticles: 0b, Duration: 2147483647, Id: 14b, Amplifier: 127b}]}], CustomName: '{"text":"ファンタズムゲート"}', RadiusOnUse: 0.0f, Duration: 40, id: "minecraft:area_effect_cloud", WaitTime: 180, Effects: [{Duration: 80, Id: 7b, Amplifier: 10b}]}}, weight: 1}]}}, weight: 1}]}, {RequiredPlayerRange: 32s, MaxNearbyEntities: 3s, CustomDisplayTile: 1b, SpawnCount: 1s, DisplayState: {Properties: {facing: "down"}, Name: "minecraft:end_rod"}, DisplayTile: "minecraft:end_rod", Invulnerable: 1b, SpawnData: {}, MaxSpawnDelay: 10s, Glowing: 1b, Delay: -1s, DisplayOffset: -23, CustomName: '{"text":"魔のワゴン"}', DeathLootTable: "empty", id: "minecraft:spawner_minecart", SpawnRange: 0s, MinSpawnDelay: 5s, SpawnPotentials: [{data: {entity: {ParticleParam2: 5, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ05"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 2b, Amplifier: 5b}, {Duration: 50, Id: 25b, Amplifier: -3b}]}}, weight: 1}, {data: {entity: {ParticleParam2: 3, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ06"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 2b, Amplifier: 7b}, {Duration: 10, Id: 25b, Amplifier: -4b}]}}, weight: 3}, {data: {entity: {ParticleParam2: 11, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ07"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 2b, Amplifier: 10b}, {Duration: 10, Id: 25b, Amplifier: -8b}]}}, weight: 5}, {data: {entity: {ParticleParam2: 10, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ08"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 2b, Amplifier: 20b}, {Duration: 10, Id: 25b, Amplifier: -16b}]}}, weight: 7}, {data: {entity: {Motion: [0.0d, -3.0d, 0.0d], Passengers: [{Particle: "witchMagic", Radius: 10.0f, ReapplicationDelay: 0, CustomName: '{"text":"HEALTH_DOWNER"}', RadiusOnUse: 0.0f, Duration: 10, id: "minecraft:area_effect_cloud", WaitTime: 120, Effects: [{Duration: 100, Id: 17b, Amplifier: 70b}, {Duration: 160, Id: 9b, Amplifier: 0b}, {Duration: 100, Id: 21b, Amplifier: 0b}, {Duration: 100, Id: 25b, Amplifier: 5b}]}, {Particle: "dragon_breath", Radius: 0.3f, ReapplicationDelay: 0, CustomName: '{"text":"HEALTH_DOWNER"}', RadiusOnUse: 0.0f, Duration: 100, id: "minecraft:area_effect_cloud", Effects: []}], Value: 0s, id: "minecraft:experience_orb", Age: 5900s}}, weight: 1}]}, {Particle: "end_rod", Radius: 0.001f, ParticleParam1: 7, ReapplicationDelay: 0, CustomName: '{"text":"ラインオーラ"}', Duration: 80, id: "minecraft:area_effect_cloud", Effects: [], CustomNameVisible: 0b}, {Item: {id: "minecraft:splash_potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 80, Id: 25b, Amplifier: 0b}], Potion: "minecraft:water"}}, Passengers: [{NoGravity: 1b, Health: 650.0f, Attributes: [{Base: 650.0d, Name: "generic.max_health"}, {Base: 0.5d, Name: "generic.movement_speed"}, {Base: 5.0d, Name: "generic.attack_damage"}, {Base: 0.3d, Name: "generic.knockback_resistance"}, {Base: 32.0d, Name: "generic.follow_range"}], Silent: 1b, FallFlying: 1b, HandItems: [{id: "minecraft:bow", Count: 65b, tag: {Enchantments: [{lvl: 3s, id: "minecraft:flame"}, {lvl: 5s, id: "minecraft:punch"}, {lvl: 3s, id: "minecraft:power"}], Damage: 0}}, {id: "minecraft:tipped_arrow", Count: 65b, tag: {CustomPotionEffects: [{ShowParticles: 0b, Duration: 2, Id: 25b, Amplifier: 127b}, {ShowParticles: 1b, Duration: 0, Id: 23b, Amplifier: 127b}, {ShowParticles: 0b, Duration: 6, Id: 7b, Amplifier: 1b}, {ShowParticles: 0b, Duration: 50, Id: 20b, Amplifier: 3b}, {ShowParticles: 0b, Duration: 22, Id: 15b, Amplifier: 0b}, {ShowParticles: 0b, Duration: 50, Id: 2b, Amplifier: 20b}], HideFlags: 32, Potion: "minecraft:swiftness"}}], ArmorDropChances: [0.0f, 0.0f, 0.0f, 0.0f], Passengers: [{Item: {id: "minecraft:splash_potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 1200, Id: 25b, Amplifier: -120b}, {Duration: 60, Id: 14b, Amplifier: -1b}], Potion: "minecraft:water"}}, Potion: {id: "minecraft:splash_potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 1200, Id: 25b, Amplifier: -120b}, {Duration: 60, Id: 14b, Amplifier: -1b}], Potion: "minecraft:water"}}, id: "minecraft:potion"}, {Particle: "falling_dust air", Radius: 0.45f, ParticleParam1: 7, ReapplicationDelay: 0, CustomName: '{"text":"ミステリアスオーラ"}', Duration: 80, id: "minecraft:area_effect_cloud", Effects: [], CustomNameVisible: 0b}], CustomName: '{"text":"魔弾の射手"}', ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 65b, tag: {SkullOwner: {Id: [I; 1453566523, -1691792216, -1844920397, 106303237], Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0Njg4NDQxMjg2OTcsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lZGVkNTE5YjY0ZjgxNDc0N2U2OTA4NTdjNDJiMjk3MjAzOWVlZDYxNWJiNmVkMDY3ZGNmOWU0MjYwZTYifX19"}]}, Name: "anminmakura"}}}], CanPickUpLoot: 1b, HandDropChances: [0.0f, 0.0f], DeathLootTable: "usb:entities/ice/mob5", id: "minecraft:stray", ActiveEffects: [{ShowParticles: 0b, Duration: 2147483647, Id: 1b, Amplifier: 20b}, {ShowParticles: 0b, Duration: 2147483647, Id: 14b, Amplifier: 127b}]}], Potion: {id: "minecraft:splash_potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 80, Id: 25b, Amplifier: 0b}], Potion: "minecraft:water"}}, id: "minecraft:potion"}], CustomName: '{"text":"魔弾の射手"}', Size: 2, Attributes: [{Base: 0.0d, Name: "generic.knockback_resistance"}, {Base: 32.0d, Name: "generic.follow_range"}], Silent: 1b, DeathLootTable: "usb:entities/ice/mob5", id: "minecraft:magma_cube", AbsorptionAmount: 650.0f, Tags: ["SkillMob", "WarpOnly"], ActiveEffects: [{Duration: 2147483647, Id: 14b, Amplifier: 127b}, {Duration: 2147483647, Id: 20b, Amplifier: 0b}]}], CustomName: '{"text":"ランダム移動"}', Health: 4.0f, Attributes: [{Base: 4.0d, Name: "generic.max_health"}], Silent: 1b, id: "minecraft:bat", ActiveEffects: [{Duration: 2147483647, Id: 14b, Amplifier: 127b}, {Duration: 2147483647, Id: 20b, Amplifier: 127b}]}], Health: 0.0f, DeathTime: 19s, Xp: 0, Silent: 1b, VillagerData: {profession: "minecraft:farmer", level: 1, type: "minecraft:plains"}, id: "minecraft:villager"}
# 例：data modify storage asset: mob set value {Passengers: [{CustomName: '{"text":"デイドラ"}', CanBreakDoors: 1b, Health: 200.0f, ArmorItems: [{id: "minecraft:leather_boots", Count: 65b, tag: {display: {color: 16711935, Name: '{"text":"デイドラのブーツ"}'}, Damage: 0}}, {id: "minecraft:leather_leggings", Count: 65b, tag: {display: {color: 16711935, Name: '{"text":"デイドラのグリーヴ"}'}, Damage: 0}}, {id: "minecraft:leather_chestplate", Count: 65b, tag: {display: {color: 16711935, Name: '{"text":"デイドラのキュイラス"}'}, Damage: 0}}, {id: "minecraft:damaged_anvil", Count: 65b, tag: {display: {Name: '{"text":"デイドラの兜"}'}}}], Attributes: [{Base: 200.0d, Name: "generic.max_health"}, {Base: 1.0d, Name: "generic.knockback_resistance"}, {Base: 10.0d, Name: "generic.attack_damage"}], id: "minecraft:zombie", ActiveEffects: [{ShowParticles: 0b, Duration: 2000000000, Id: 14b, Amplifier: 1b}, {ShowParticles: 0b, Duration: 2000000000, Id: 12b, Amplifier: 1b}, {ShowParticles: 0b, Duration: 2000000000, Id: 1b, Amplifier: 4b}, {ShowParticles: 0b, Duration: 2000000000, Id: 8b, Amplifier: 10b}], HandItems: [{id: "minecraft:stone_sword", Count: 65b, tag: {display: {Name: '{"text":"アカヴィリ刀"}'}, Enchantments: [{lvl: 20s, id: "minecraft:fire_aspect"}, {lvl: 20s, id: "minecraft:knockback"}], Damage: 0}}], CustomNameVisible: 1b}], Health: 0.0f, DeathTime: 19s, Xp: 0, VillagerData: {profession: "minecraft:farmer", level: 1, type: "minecraft:plains"}, id: "minecraft:villager"}

# この下のコメント郡は無視！mobを編集する時には使うよ

### idを設定
# data modify storage asset: mob.id set value "skeleton"

### 体力等nbtを設定
# 体力
# data modify storage asset: mob.Health set value 20
# 緩衝体力
# data modify storage asset: mob.AbsorptionAmount set value 20
# AIを持っているか
# data modify storage asset: mob.NoAI set value true
# 無敵か
# data modify storage asset: mob.Invulnerable set value true
# 音を出すか
# data modify storage asset: mob.Silent set value true
# 光るか
# data modify storage asset: mob.Glowing set value true
# デスポーンするか
# data modify storage asset: mob.PersistenceRequired set value true
# 名前
# data modify storage asset: mob.CustomName set value '{"text":"Example"}'
# 名前を表示するか
# data modify storage asset: mob.CustomNameVisible set value true
# 死亡時のルートテーブル
# data modify storage asset: mob.DeathLootTable set value "empty"
# Tags
# data modify storage asset: mob.Tags set value ["example"]
# ポータルに入るまでのクールダウン。"CooldownRequired"というtagを付けているとこのnbtが0の時自動で消滅する
# data modify storage asset: mob.PortalCooldown set value 0
# 可読性や編集の手間を考慮しなければこれらを全て一つに纏めることも可能です


### Attributes
# 最大体力
# data modify storage asset: mob.Attributes append value {Name:generic.max_health, Base:100}
# (近接)攻撃力
# data modify storage asset: mob.Attributes append value {Name:generic.attack_damage, Base:10}
# 移動速度
# data modify storage asset: mob.Attributes append value {Name:generic.movement_speed, Base:0.2}
# 防具値
# data modify storage asset: mob.Attributes append value {Name:generic.armor, Base:20}
# 防具強度
# data modify storage asset: mob.Attributes append value {Name:generic.armor_toughness, Base:12}
# ノックバック耐性(0~1)
# data modify storage asset: mob.Attributes append value {Name:generic.knockback_resistance, Base:1}
# 索敵範囲
# data modify storage asset: mob.Attributes append value {Name:generic.follow_range, Base:64}
# 攻撃のノックバック(0~5)
# data modify storage asset: mob.Attributes append value {Name:generic.attack_knockback, Base:1}
# それぞれの詳しい仕様はwikiなどで調べてください
# 可読性や編集の手間を考慮しなければこれらを全て一つに纏めることも可能です
# Attribute Modifierというものも使用可能。ただし、UUIDを指定する必要がある(めんどい)
# data modify storage asset: mob.Attributes[{Name:generic.max_health}] append value {Modifiers:[{Amount:1,Operation:0,UUID:[I;1525,58721857,885,8867183],Name:"example_modifier"}]}
# Operation:0はn+x+y+z、Operation:1はn×(1+x+y+z)、Operation:2はn×(1+x)×(1+y)×(1+z) Nameは必須ではなさそう


### ArmorItems
# 防具立てを召喚してアイテムを持たせ、そのデータを代入します(座標は常時読み込みチャンク)
# summon armor_stand -2000.0 0.0 0.0 {Tags:["ItemHolder"]}
# /lootでloot_tableから装備させるか、/itemで直接持たせます
# loot replace entity @e[tag=ItemHolder,limit=1] armor.head loot asset:items/silver_unit/silver_banner
# item replace entity @e[tag=ItemHolder,limit=1] armor.chest with diamond_chestplate{Unbreakable:true} 1
# item replace entity @e[tag=ItemHolder,limit=1] armor.legs with diamond_leggings{Unbreakable:true} 1
# item replace entity @e[tag=ItemHolder,limit=1] armor.feet with diamond_boots{Unbreakable:true} 1
# 手にも持たせます
# 防具と同様に/lootか/itemで
# loot replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand loot asset:items/silver_unit/true_white_banner
# item replace entity @e[tag=ItemHolder,limit=1] weapon.offhand with shield{Damage:256} 1
# 最後に、防具立ての防具のnbtと持っているアイテムのnbtをstorageに移し、killします
# data modify storage asset: mob.ArmorItems set from entity @e[tag=ItemHolder,limit=1] ArmorItems
# data modify storage asset: mob.HandItems set from entity @e[tag=ItemHolder,limit=1] HandItems
# kill @e[tag=ItemHolder,limit=1]
# 直接ArmorItemsなどにitemを突っ込んでも大丈夫です
# 防具のドロップ率を設定します。基本0で [足,脚,胸,頭]
# data modify storage asset: mob.ArmorDropChances set value [0.0F,0.0F,0.0F,0.0F]


### ActiveEffects
# 直接nbtを指定して追加します
#effect一覧
    #{Name:speed,id:1} 移動速度上昇 +lv*20%
    #{Name:slowness,id:2} 移動速度低下 -lv*15%
    #{Name:haste,id:3} 採掘速度上昇 +lv*20%
    #{Name:mining_fatigue,id:4} 採掘速度低下 1*0.3^lv
    #{Name:strength,id:5} 攻撃力上昇 +lv*3
    #{Name:instant_health,id:6} 即時回復 2^lv*2
    #{Name:instant_damage,id:7} 即時ダメージ 2^lv*3
    #{Name:jump_boost,id:8} 跳躍力上昇 1.25*(lv*0.5)
    #{Name:nausea,id:9} 吐き気
    #{Name:regeneration,id:10} 再生
    #{Name:resistance,id:11} 耐性 100-lv*20%
    #{Name:fire_resistance,id:12} 火炎耐性
    #{Name:water_breathing,id:13} 水中呼吸
    #{Name:invisibility,id:14} 透明化 tusb_remake:player/invisible
    #{Name:blindness,id:15} 盲目
    #{Name:night_vision,id:16} 暗視
    #{Name:hunger,id:17} 空腹
    #{Name:weakness,id:18} 弱体化 -lv*4
    #{Name:poison,id:19} 毒
    #{Name:wither,id:20} ウィザー
    #{Name:health_boots,id:21} 体力増強 +lv*4
    #{Name:absorption,id:22} 緩衝体力増加 +lv*4
    #{Name:saturation,id:23} 満腹度回復 +lv*1
    #{Name:glowing,id:24} 発光
    #{Name:levitation,id:25} 浮遊
    #{Name:luck,id:26} 運
    #{Name:bad_luck,id:27} 不運
    #{Name:slow_falling,id:28} 低速落下
    #{Name:conduit_power,id:29} コンジットパワー
    #{Name:dolphins_grace,id:30} イルカの好意
    #{Name:bad_omen,id:31} 不吉な予感
    #{Name:hero_of_the_village,id:32} 村の英雄
    #{Name:darkness,id:33} 暗闇
    # 詳しくはwiki見てね！
# data modify storage asset: mob.ActiveEffects append value {Id:0,Amplifier:1,Duration:600,ShowParticles:0b}
# data modify storage asset: mob.ActiveEffects append value {Id:5,Amplifier:4,Duration:600,ShowParticles:0b}
# 或いは...
# data modify storage asset: mob.ActiveEffects set value [{Id:0,Amplifier:1,Duration:600,ShowParticles:0b},{Id:5,Amplifier:4,Duration:600,ShowParticles:0b}]
# このように一行に纏めることも可能。ただし、可読性は下がるかな
# Id,Amplifier,Duration,ShowIcon,ShowParticle,Ambient


### Passengers
# 一番面倒です
# まず、mobデータを避難させます
# data modify storage _: _ set from storage asset: mob
# 次に、乗せたいmobがasset mobの場合dataを呼び出します
# 0001.the_white
# data modify storage asset:context id set value 1
# function #asset:mob/get_data
# 呼び出したdataを避難させたdataのPassengersに追加します
# data modify storage _: _.Passengers append from storage asset: mob
# 最後にmobデータを戻す...といきたいところですが、他にも乗せたいmobがいる場合はこのまま続けます
# 次のmobのためにmobデータを一度破棄します
# data remove storage asset: mob
# 次のmobがasset mobなら先程の手順を繰り返します。そうでなければ、直接nbtを指定します
# 今回はAECを騎乗させることにします(なんということでしょう、これまでやってきたことを繰り返すことになります)
# data modify storage asset: mob.id set value "area_effect_cloud"
# data modify storage asset: mob set value {Duration:32767,WatiTime:0,Particle:"end_rod"}
# data modify storage asset: mob.Effects set value [{Id:1,Amplifier:1,Duration:1}]
# data modify storage _: _.Passengers append from storage asset: mob
# 最後に、mobデータを戻して避難用storageを削除します
# data modify storage asset: mob set from storage _: _
# data remove storage _: _