#> asset:mob/4802.magic_bullet_prince/data/2.data_set

# 最終的にPassengersやスポナーの中身に使える形になればそこまでがどのような形でもいい




# dataを初期化
data remove storage asset: mob

# 手順：皇子を作る→魔のワゴンを作る(スポナー乗せたり)→魔のワゴンに皇子を乗せる→村人騎乗コウモリを作る→魔のワゴンを乗せる

##### 魔弾の皇子 #####
    
    ### idを設定
    data modify storage asset: mob.id set value "minecraft:stray"
    
    ### 体力等nbtを設定
    # 体力
    data modify storage asset: mob.Health set value 444
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
    # 重力を持たないか
    data modify storage asset: mob.NoGravity set value true
    # デスポーンするか(しない)
    data modify storage asset: mob.PersistenceRequired set value true
    # 名前
    data modify storage asset: mob.CustomName set value '{"text":"§5§l⇞⇞魔弾の皇子⇞⇞"}'
    # 名前を表示するか
    # data modify storage asset: mob.CustomNameVisible set value true
    # 死亡時のルートテーブル
    data modify storage asset: mob.DeathLootTable set value "usb:entities/ice/mob6"
    # Tags
    data modify storage asset: mob.Tags set value ["SkillMob","akuu","MagicBulletPrince"]
    # Team
    data modify storage asset: mob.Team set value Boss
    # ポータルに入るまでのクールダウン。"CooldownRequired"というtagを付けているとこのnbtが0の時自動で消滅する
    # data modify storage asset: mob.PortalCooldown set value 0
    # 可読性や編集の手間を考慮しなければこれらを全て一つに纏めることも可能です
    
    
    
    
    ### Attributes
    # 最大体力
    data modify storage asset: mob.Attributes append value {Name:generic.max_health, Base:444}
    # (近接)攻撃力
    data modify storage asset: mob.Attributes append value {Name:generic.attack_damage, Base:5}
    # 移動速度
    data modify storage asset: mob.Attributes append value {Name:generic.movement_speed, Base:0.5}
    # 防具値
    # data modify storage asset: mob.Attributes append value {Name:generic.armor, Base:20}
    # 防具強度
    # data modify storage asset: mob.Attributes append value {Name:generic.armor_toughness, Base:12}
    # ノックバック耐性(0~1)
    # data modify storage asset: mob.Attributes append value {Name:generic.knockback_resistance, Base:1}
    # 索敵範囲
    data modify storage asset: mob.Attributes append value {Name:generic.follow_range, Base:32}
    # 攻撃のノックバック(0~5)
    # data modify storage asset: mob.Attributes append value {Name:generic.attack_knockback, Base:1}
    # それぞれの詳しい仕様はwikiなどで調べてください
    # 可読性や編集の手間を考慮しなければこれらを全て一つに纏めることも可能です
    # Attribute Modifierというものも使用可能。ただし、UUIDを指定する必要がある(めんどい)
    # data modify storage asset: mob.Attributes[{Name:generic.max_health}] append value {Modifiers:[{Amount:1,Operation:0,UUID:[I;1525,58721857,885,8867183],Name:"example_modifier"}]}
    # Operation:0はn+x+y+z、Operation:1はn×(1+x+y+z)、Operation:2はn×(1+x)×(1+y)×(1+z) Nameは必須ではなさそう
    
    
    ### ArmorItems
    # 防具立てを召喚してアイテムを持たせ、そのデータを代入します(座標は常時読み込みチャンク)
    summon armor_stand -2000.0 0.0 0.0 {Tags:["ItemHolder"]}
    # /lootでloot_tableから装備させるか、/itemで直接持たせます
    # loot replace entity @e[tag=ItemHolder,limit=1] armor.head loot asset:item/armor/head/black_mage_soul
    # item replace entity @e[tag=ItemHolder,limit=1] armor.chest with diamond_chestplate{Unbreakable:true} 1
    # item replace entity @e[tag=ItemHolder,limit=1] armor.legs with diamond_leggings{Unbreakable:true} 1
    # item replace entity @e[tag=ItemHolder,limit=1] armor.feet with diamond_boots{Unbreakable:true} 1
    # 手にも持たせます
    # 防具と同様に/lootか/itemで
    loot replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand loot asset:item/weapon/bow/magic_bullet_m82a3
    loot replace entity @e[tag=ItemHolder,limit=1] weapon.offhand loot asset:item/arrow/12.7_99mm_nato_bullet
    data modify entity @e[tag=ItemHolder,limit=1] HandItems[1].Count set value 8
    # 最後に、防具立ての防具のnbtと持っているアイテムのnbtをstorageに移し、killします
    data modify storage asset: mob.ArmorItems set value [{},{},{id:"chainmail_chestplate",Count:65b,tag:{Enchantments:[{lvl:20,id:"protection"}]}},{id: "minecraft:player_head", Count: 65b, tag: {SkullOwner: {Id: [I; 1453566523, -1691792216, -1844920397, 106303237], Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0Njg4NDQxMjg2OTcsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lZGVkNTE5YjY0ZjgxNDc0N2U2OTA4NTdjNDJiMjk3MjAzOWVlZDYxNWJiNmVkMDY3ZGNmOWU0MjYwZTYifX19"}]}, Name: "anminmakura"}}}]
    # data modify storage asset: mob.ArmorItems set from entity @e[tag=ItemHolder,limit=1] ArmorItems
    data modify storage asset: mob.HandItems set from entity @e[tag=ItemHolder,limit=1] HandItems
    kill @e[tag=ItemHolder,limit=1]
    # 直接ArmorItemsなどにitemを突っ込んでも大丈夫です
    # 防具のドロップ率を設定します。基本0で [足,脚,胸,頭]
    data modify storage asset: mob.ArmorDropChances set value [0.0F,0.0F,0.0F,0.0F]
    data modify storage asset: mob.HandDropChances set value [0.085F,0.9F]
    # HandItems:[0:{Count:1b,id:"minecraft:bow",tag:{ench:[0:{lvl:20,id:48},1:{lvl:4,id:49},2:{lvl:8,id:50}],RepairCost:1000000000,display:{Lore:[0:"§d§l魔弾が持つ最上の狙撃弓"],Name:"§5§k|§b§k|§5§k|§b§l M§5§lagic §b§lB§5§larrett §b§lM§5§l82A3 §5§k|§b§k|§5§k|"},AttributeModifiers:[0:{UUIDMost:58769,UUIDLeast:58768,Amount:-0.5d,Slot:"mainhand",AttributeName:"generic.movementSpeed",Operation:1,Name:"generic.movementSpeed"}]},Damage:0s},1:{Count:8b,id:"minecraft:tipped_arrow",tag:{CustomPotionEffects:[0:{ShowParticles:0b,Duration:0,Id:16b,Amplifier:127b},1:{ShowParticles:0b,Duration:0,Id:1b,Amplifier:127b},2:{ShowParticles:0b,Duration:0,Id:3b,Amplifier:127b},3:{ShowParticles:0b,Duration:0,Id:5b,Amplifier:127b},4:{ShowParticles:0b,Duration:0,Id:8b,Amplifier:127b},5:{ShowParticles:0b,Duration:0,Id:10b,Amplifier:127b},6:{ShowParticles:0b,Duration:0,Id:11b,Amplifier:127b},7:{ShowParticles:0b,Duration:0,Id:12b,Amplifier:127b},8:{ShowParticles:0b,Duration:0,Id:16b,Amplifier:127b},9:{ShowParticles:0b,Duration:0,Id:22b,Amplifier:127b},10:{ShowParticles:1b,Duration:0,Id:13b,Amplifier:118b},11:{ShowParticles:1b,Duration:0,Id:25b,Amplifier:-128b},12:{ShowParticles:1b,Duration:100,Id:2b,Amplifier:28b},13:{ShowParticles:1b,Duration:0,Id:15b,Amplifier:22b},14:{ShowParticles:1b,Duration:200,Id:20b,Amplifier:50b},15:{ShowParticles:1b,Duration:4,Id:25b,Amplifier:127b},16:{ShowParticles:1b,Duration:6,Id:23b,Amplifier:27b},17:{ShowParticles:1b,Duration:60,Id:7b,Amplifier:2b}],HideFlags:32,display:{Lore:[0:"§7対人性能に特化した大口径弾薬",1:"§730-06ライフル弾のマズルエナジーは2,000～3000Feet･Pound"],Name:"§7§l12.7x99mm NATO弾"}},Damage:0s}]

    # {CustomPotionEffects:[{ShowParticles:0b,Duration:0,Id:16b,Amplifier:127b},{ShowParticles:0b,Duration:0,Id:1b,Amplifier:127b},{ShowParticles:0b,Duration:0,Id:3b,Amplifier:127b},{ShowParticles:0b,Duration:0,Id:5b,Amplifier:127b},{ShowParticles:0b,Duration:0,Id:8b,Amplifier:127b},{ShowParticles:0b,Duration:0,Id:10b,Amplifier:127b},{ShowParticles:0b,Duration:0,Id:11b,Amplifier:127b},{ShowParticles:0b,Duration:0,Id:12b,Amplifier:127b},{ShowParticles:0b,Duration:0,Id:16b,Amplifier:127b},{ShowParticles:0b,Duration:0,Id:22b,Amplifier:127b},{ShowParticles:1b,Duration:0,Id:13b,Amplifier:118b},{ShowParticles:1b,Duration:0,Id:25b,Amplifier:-128b},{ShowParticles:1b,Duration:100,Id:2b,Amplifier:28b},{ShowParticles:1b,Duration:0,Id:15b,Amplifier:22b},{ShowParticles:1b,Duration:200,Id:20b,Amplifier:50b},{ShowParticles:1b,Duration:4,Id:25b,Amplifier:127b},{ShowParticles:1b,Duration:6,Id:23b,Amplifier:27b},{ShowParticles:1b,Duration:60,Id:7b,Amplifier:2b}],HideFlags:32,display:{Lore:['"§7対人性能に特化した大口径弾薬"','"§730-06ライフル弾のマズルエナジーは2,000～3000Feet･Pound"'],Name:'"§7§l12.7x99mm NATO弾"'}}

# 1:speed(解除)
# 3:haste(解除)
# 5:strength(解除)
# 8:jump_boost(解除)
# 10:regeneration(解除)
# 11:resistance(解除)
# 12:fire_resistance(解除)
# 13:water_breathing(解除)
# 16:night_vision(解除)
# 22:absorption(解除)
# 25:levitation(解除)
# 25:levitation(-128)(4t)
# 2:slowness(28)(100t)
# 7:instant_damage(2)(60t)
# 15:blindness(22)(0t)
# 20:wither(50)(200t)
# 23:saturation(27)(6t)

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

    # Passengers
    data modify storage asset: mob.Passengers append value {id:"minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:14,Amplifier:-1b,Duration:60},{Id:25,Amplifier:-120b,Duration:1200}]}}}
    data modify storage asset: mob.Passengers append value {id:area_effect_cloud,Effects:[],CustomName:'{"text":"ミステリアスオーラ"}',Radius:0.45f,Duration:80,Particle:"falling_dust air"}
    
    
    data modify storage _: MagicBulletPrince set from storage asset: mob


##### 魔のワゴン #####

    # dataを初期化
    data remove storage asset: mob
    
    ### idを設定
    data modify storage asset: mob.id set value "skeleton"
    
    
    ### 体力等nbtを設定
        # Size
        data modify storage asset: mob.Size set value 2
        # 体力
        data modify storage asset: mob.Health set value 650
        # 緩衝体力
        # data modify storage asset: mob.AbsorptionAmount set value 20
        # AIを持っているか
        # data modify storage asset: mob.NoAI set value true
        # 重力の影響を受けるか
        data modify storage asset: mob.NoGravity set value true
        # 無敵か
        # data modify storage asset: mob.Invulnerable set value true
        # 音を出すか
        data modify storage asset: mob.Silent set value true
        # 光るか
        # data modify storage asset: mob.Glowing set value true
        # デスポーンするか
        # data modify storage asset: mob.PersistenceRequired set value true
        # 名前
        data modify storage asset: mob.CustomName set value '{"text":"§5§l魔のワゴン"}'
        # 名前を表示するか
        # data modify storage asset: mob.CustomNameVisible set value true
        # 死亡時のルートテーブル
        data modify storage asset: mob.DeathLootTable set value "usb:entities/ice/mob5"
        # Tags
        data modify storage asset: mob.Tags set value ["SkillMob","WarpOnly"]
        # ポータルに入るまでのクールダウン。"CooldownRequired"というtagを付けているとこのnbtが0の時自動で消滅する
        # data modify storage asset: mob.PortalCooldown set value 0
        # 可読性や編集の手間を考慮しなければこれらを全て一つに纏めることも可能です
    
    
    ### Attributes
        # 最大体力
        data modify storage asset: mob.Attributes append value {Name:generic.max_health, Base:650}
        # (近接)攻撃力
        # data modify storage asset: mob.Attributes append value {Name:generic.attack_damage, Base:10}
        # 移動速度
        # data modify storage asset: mob.Attributes append value {Name:generic.movement_speed, Base:0.2}
        # 防具値
        # data modify storage asset: mob.Attributes append value {Name:generic.armor, Base:20}
        # 防具強度
        # data modify storage asset: mob.Attributes append value {Name:generic.armor_toughness, Base:12}
        # ノックバック耐性(0~1)
        data modify storage asset: mob.Attributes append value {Name:generic.knockback_resistance, Base:0.0}
        # 索敵範囲
        data modify storage asset: mob.Attributes append value {Name:generic.follow_range, Base:32}
        # 攻撃のノックバック(0~5)
        # data modify storage asset: mob.Attributes append value {Name:generic.attack_knockback, Base:1}
    
    data modify storage asset: mob.ActiveEffects set value [{Duration: 2147483647, Id: 14b, Amplifier: 127b}, {Duration: 2147483647, Id: 20b, Amplifier: 0b}]
    
    # スポナー(射手産)
    data modify storage asset: mob.Passengers append value {RequiredPlayerRange: 20s, MaxNearbyEntities: 3s, CustomDisplayTile: 1b, SpawnCount: 1s, DisplayState: {Properties: {facing: "down", enabled: "true"}, Name: "minecraft:hopper"}, DisplayTile: "minecraft:hopper", Invulnerable: 1b, SpawnData: {}, MaxSpawnDelay: 40s, Glowing: 1b, Delay: -1s, DisplayOffset: -14, CustomName: '{"text":"魔のワゴン"}', DeathLootTable: "empty", id: "minecraft:spawner_minecart", SpawnRange: 0s, MinSpawnDelay: 10s, SpawnPotentials: [{data: {entity: {ParticleParam2: 2, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ01"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 1b, Amplifier: 1b}, {Duration: 10, Id: 25b, Amplifier: 15b}]}}, weight: 1}, {data: {entity: {ParticleParam2: 14, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ02"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 1b, Amplifier: 5b}, {Duration: 10, Id: 25b, Amplifier: 7b}]}}, weight: 3}, {data: {entity: {ParticleParam2: 1, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ03"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 1b, Amplifier: 10b}, {Duration: 10, Id: 25b, Amplifier: 4b}]}}, weight: 5}, {data: {entity: {ParticleParam2: 4, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ04"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 1b, Amplifier: 20b}, {Duration: 10, Id: 25b, Amplifier: 2b}]}}, weight: 7}, {data: {entity: {NoGravity: 1b, Motion: [0.0d, 0.1d, 0.0d], RequiredPlayerRange: 80s, MaxNearbyEntities: 99s, CustomDisplayTile: 1b, SpawnCount: 16s, DisplayState: {Properties: {east: "false", south: "false", north: "false", west: "false", up: "false", age: "0"}, Name: "minecraft:fire"}, DisplayTile: "minecraft:fire", Invulnerable: 1b, SpawnData: {}, MaxSpawnDelay: 6s, PortalCooldown: 10, Delay: -1s, DisplayOffset: 14, CustomName: '{"text":"LWS01"}', DeathLootTable: "empty", id: "minecraft:spawner_minecart", SpawnRange: 16s, Tags: ["CooldownRequired"], MinSpawnDelay: 6s, SpawnPotentials: [{data: {entity: {Particle: "explosion", Radius: 0.01f, ReapplicationDelay: 0, Passengers: [{id: "minecraft:ender_pearl", Glowing: 1b}, {NoGravity: 1b, CustomName: '{"text":"DeathRay"}', Health: 200.0f, Attributes: [{Base: 200.0d, Name: "generic.max_health"}, {Base: 10.0d, Name: "generic.attack_damage"}, {Base: 1.0d, Name: "generic.knockback_resistance"}, {Base: 80.0d, Name: "generic.follow_range"}], Silent: 1b, DeathLootTable: "empty", id: "minecraft:guardian", ActiveEffects: [{ShowParticles: 0b, Duration: 2147483647, Id: 14b, Amplifier: 127b}]}], CustomName: '{"text":"ファンタズムゲート"}', RadiusOnUse: 0.0f, Duration: 40, id: "minecraft:area_effect_cloud", WaitTime: 200, Effects: [{Duration: 80, Id: 7b, Amplifier: 10b}]}}, weight: 1}]}}, weight: 1}, {data: {entity: {NoGravity: 1b, Motion: [0.0d, 0.1d, 0.0d], RequiredPlayerRange: 80s, MaxNearbyEntities: 99s, CustomDisplayTile: 1b, SpawnCount: 16s, DisplayState: {Properties: {east: "false", south: "false", north: "false", west: "false", up: "false", age: "0"}, Name: "minecraft:fire"}, DisplayTile: "minecraft:fire", Invulnerable: 1b, SpawnData: {}, MaxSpawnDelay: 6s, PortalCooldown: 10, Delay: -1s, DisplayOffset: 14, CustomName: '{"text":"LWS02"}', DeathLootTable: "empty", id: "minecraft:spawner_minecart", SpawnRange: 16s, Tags: ["CooldownRequired"], MinSpawnDelay: 6s, SpawnPotentials: [{data: {entity: {Particle: "explosion", Radius: 0.01f, ReapplicationDelay: 0, Passengers: [{id: "minecraft:ender_pearl", Glowing: 1b}, {NoGravity: 1b, CustomName: '{"text":"QuatreShot"}', Health: 200.0f, Color: 16b, Attributes: [{Base: 200.0d, Name: "generic.max_health"}, {Base: 1.0d, Name: "generic.knockback_resistance"}, {Base: 80.0d, Name: "generic.follow_range"}], Silent: 1b, DeathLootTable: "empty", id: "minecraft:shulker", ActiveEffects: [{ShowParticles: 0b, Duration: 2147483647, Id: 14b, Amplifier: 127b}]}], CustomName: '{"text":"ファンタズムゲート"}', RadiusOnUse: 0.0f, Duration: 40, id: "minecraft:area_effect_cloud", WaitTime: 180, Effects: [{Duration: 80, Id: 7b, Amplifier: 10b}]}}, weight: 1}]}}, weight: 1}]}
    data modify storage asset: mob.Passengers append value {RequiredPlayerRange: 32s, MaxNearbyEntities: 3s, CustomDisplayTile: 1b, SpawnCount: 1s, DisplayState: {Properties: {facing: "down"}, Name: "minecraft:end_rod"}, DisplayTile: "minecraft:end_rod", Invulnerable: 1b, SpawnData: {}, MaxSpawnDelay: 10s, Glowing: 1b, Delay: -1s, DisplayOffset: -23, CustomName: '{"text":"魔のワゴン"}', DeathLootTable: "empty", id: "minecraft:spawner_minecart", SpawnRange: 0s, MinSpawnDelay: 5s, SpawnPotentials: [{data: {entity: {ParticleParam2: 5, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ05"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 2b, Amplifier: 5b}, {Duration: 50, Id: 25b, Amplifier: -3b}]}}, weight: 1}, {data: {entity: {ParticleParam2: 3, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ06"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 2b, Amplifier: 7b}, {Duration: 10, Id: 25b, Amplifier: -4b}]}}, weight: 3}, {data: {entity: {ParticleParam2: 11, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ07"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 2b, Amplifier: 10b}, {Duration: 10, Id: 25b, Amplifier: -8b}]}}, weight: 5}, {data: {entity: {ParticleParam2: 10, Particle: "minecraft:block air", Radius: 1.5f, ParticleParam1: 160, ReapplicationDelay: 0, CustomName: '{"text":"ムーブオーラ08"}', RadiusOnUse: 0.0f, Duration: 20, id: "minecraft:area_effect_cloud", Effects: [{Duration: 10, Id: 2b, Amplifier: 20b}, {Duration: 10, Id: 25b, Amplifier: -16b}]}}, weight: 7}, {data: {entity: {Motion: [0.0d, -3.0d, 0.0d], Passengers: [{Particle: "witchMagic", Radius: 10.0f, ReapplicationDelay: 0, CustomName: '{"text":"HEALTH_DOWNER"}', RadiusOnUse: 0.0f, Duration: 10, id: "minecraft:area_effect_cloud", WaitTime: 120, Effects: [{Duration: 100, Id: 17b, Amplifier: 70b}, {Duration: 160, Id: 9b, Amplifier: 0b}, {Duration: 100, Id: 21b, Amplifier: 0b}, {Duration: 100, Id: 25b, Amplifier: 5b}]}, {Particle: "dragon_breath", Radius: 0.3f, ReapplicationDelay: 0, CustomName: '{"text":"HEALTH_DOWNER"}', RadiusOnUse: 0.0f, Duration: 100, id: "minecraft:area_effect_cloud", Effects: []}], Value: 0s, id: "minecraft:experience_orb", Age: 5900s}}, weight: 1}]}
    # ラインオーラ(射手産)
    data modify storage asset: mob.Passengers append value {Particle: "end_rod", Radius: 0.001f, ParticleParam1: 7, ReapplicationDelay: 0, CustomName: '{"text":"ラインオーラ"}', Duration: 80, id: "minecraft:area_effect_cloud", Effects: [], CustomNameVisible: 0b}

    # 皇子を乗せる
    data modify storage asset: mob.Passengers append from storage _: MagicBulletPrince

    data modify storage _: MagicWagon set from storage asset: mob

### コウモリon村人
    data remove storage asset: mob
    data modify storage asset: mob set value {Passengers: [{CustomName: '{"text":"ランダム移動"}', Health: 4.0f, Attributes: [{Base: 4.0d, Name: "generic.max_health"}], Silent: 1b, id: "minecraft:bat", ActiveEffects: [{Duration: 2147483647, Id: 14b, Amplifier: 127b}, {Duration: 2147483647, Id: 20b, Amplifier: 127b}]}], Health: 0.0f, DeathTime: 19s, Xp: 0, Silent: 1b, VillagerData: {profession: "minecraft:farmer", level: 1, type: "minecraft:plains"}, id: "minecraft:villager"}

### 全部合体！！
data modify storage asset: mob.Passengers[0].Passengers append from storage _: MagicWagon


data remove storage _: MagicBulletPrince
data remove storage _: MagicWagon