#> time_limit:boss/newstar_king/spawn

# 専用スペース作るかは未定
# スポーン後は体力設定もしないといけないしspawnしたスコアも入れないとだよねぇって

# ボス出現したスコアon
# いるかわからんこれ

# item kill
# kill @e[type=item,nbt={Item:{id:"minecraft:structure_void",tag:{Boss:1b}}}]

# ボススポーン後にやること


# 本家の体力は900*5*5=22500+防具の防具値とゾンビデフォの防具値2
# なので若干体力が低めではあるが召喚とかあるしなんだかんだでね。
# じゃあなんでサンボルlv3 13発で死ぬんですか(ᐛ)
# 検証結果 v12Rだけなんかおかしい 1.10だと5倍くらいはかかった
# 400*13=5200 耐性orprtと防具値参照くらいの値じゃねえかこれ
# 本家のパーチくるは耐性4、跳躍5、透明化
# あ、耐性エフェクト無視してますわわら
#scoreboard players set @e[tag=NewStar_King] Boss_Health 2048000
# マルチ用補正
# spawnした時に鯖にいるgamemode spectater以外の人数分補正をかける
# 計算式:2048*(100+20*人数-1)

# +で盾attributeによる補正をかけたい
# 難易度で補正割合変えるか、、？

# 複数回すぽーんしてもいいように最初にベースの体力を設定しておく
scoreboard players set $30720 Boss_x 30720

# ファイトフラグをセット
scoreboard players set Flag FightingBoss 1

# 計算部
execute store result score People Boss_x run execute if entity @a[gamemode=!spectator]
scoreboard players remove People Boss_x 1
scoreboard players operation People Boss_x *= $20 Boss_x
scoreboard players add People Boss_x 100
scoreboard players operation $30720 Boss_x *= People Boss_x
# ここでマルチ倍率を込みしたHP倍率が決定するので最終的に代入
execute store result score Health Boss_Health run scoreboard players get $30720 Boss_x
# max healthも
scoreboard players operation Max Boss_Health = $30720 Boss_x

# 割合取得用に最大HPの1割を取得
# tempに最大ヘルス代入
scoreboard players operation $Temp_Max Boss_Health = Max Boss_Health
# 体力の10%を取得
execute store result score $10percent Boss_Health run scoreboard players operation $Temp_Max Boss_Health /= $10 Boss_x
# ボスmax再取得
scoreboard players operation $Temp_Max Boss_Health = Max Boss_Health
# 体力の1%を取得
execute store result score $1percent Boss_Health run scoreboard players operation $Temp_Max Boss_Health /= $100 Boss_x
# 見た目上リセットしたい
scoreboard players reset $Temp_Max Boss_Health
# HP割合を10に
scoreboard players set $percent_10 Boss_x 10

# やっとこさHP計算が終わったので王たちを召喚する
# 深淵ノ王
summon zombie ~ ~1 ~ {IsBaby: 0b, Attributes: [{Base: 0.0d, Name: "minecraft:generic.armor_toughness"}, {Base: 2.0d, Name: "minecraft:generic.armor"}, {Base: 900.0d, Name: "minecraft:generic.max_health"}, {Base: 60.0d, Name: "minecraft:generic.follow_range"}, {Base: 0.37d, Name: "minecraft:generic.movement_speed"}, {Base: 3.0d, Name: "minecraft:generic.attack_damage"}, {Base: 1.0d, Name: "minecraft:generic.knockback_resistance"}], Invulnerable: 1b, FallFlying: 0b, PortalCooldown: 0, AbsorptionAmount: 0.0f, InWaterTime: -1, FallDistance: 0.0f, DeathTime: 0s, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 1b, Tags: ["AbyssWarp", "SkillMob", "PaleRider", "RedRider", "Shinen", "WhiteRider", "BlackRider", "Abyss_King","Boss","BossEnemy"], Health: 900f, LeftHanded: 0b, Air: 300s, OnGround: 0b, HandItems: [{id: "minecraft:diamond_pickaxe", Count: 65b, tag: {Damage: 0, display: {Name: '{"text":"全能ノ一"}'}, Enchantments: [{lvl: 10s, id: "minecraft:sharpness"}, {lvl: 10s, id: "minecraft:knockback"}, {lvl: 10s, id: "minecraft:fire_aspect"}, {lvl: 10s, id: "minecraft:efficiency"}, {lvl: 10s, id: "minecraft:unbreaking"}, {lvl: 10s, id: "minecraft:fortune"}]}}, {id: "minecraft:shield", Count: 1b, tag: {RepairCost: 1000000000, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "ss", Color: 15}, {Pattern: "cbo", Color: 2}, {Pattern: "tts", Color: 15}, {Pattern: "bts", Color: 15}, {Pattern: "flo", Color: 15}], Base: 10}, display: {Lore: ['{"text":"§5§l深淵なる者を倒した証。"}'], Name: '{"text":"§5§l深淵の盾"}'}, Enchantments: [{lvl: 5s, id: "minecraft:knockback"}], Damage: 0, AttributeModifiers: [{Amount: 1.0d, Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 0, UUID: [I; 0, 2, 0, 1], Name: "KB"}, {Amount: 5.0d, Slot: "offhand", AttributeName: "generic.attack_damage", Operation: 0, UUID: [I; 0, 2, 0, 2], Name: "ATK"}, {Amount: 1.0d, Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 0, UUID: [I; 0, 1, 0, 3], Name: "KB"}, {Amount: 5.0d, Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 0, UUID: [I; 0, 1, 0, 4], Name: "ATK"}]}}], ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '{"text":"§4§k|§c§k|§4§k|§d§k|§4§k|§r §5§l深淵ノ王 §4§k|§d§k|§4§k|§c§k|§4§k|§r"}', CanBreakDoors: 0b, Fire: -1s, ArmorItems: [{id: "minecraft:leather_boots", Count: 65b, tag: {Damage: 0, display: {color: 3014747, Name: '{"text":"終焉ヲ告ゲル者"}'}, Enchantments: [{lvl: 0s, id: "minecraft:protection"}, {lvl: 1s, id: "minecraft:fire_protection"}, {lvl: 2s, id: "minecraft:feather_falling"}, {lvl: 3s, id: "minecraft:blast_protection"}, {lvl: 4s, id: "minecraft:projectile_protection"}, {lvl: 5s, id: "minecraft:respiration"}, {lvl: 6s, id: "minecraft:aqua_affinity"}, {lvl: 7s, id: "minecraft:thorns"}, {lvl: 8s, id: "minecraft:depth_strider"}]}}, {id: "minecraft:leather_leggings", Count: 65b, tag: {Damage: 0, display: {color: 3014747, Name: '{"text":"終焉ヲ告ゲル者"}'}, Enchantments: [{lvl: 0s, id: "minecraft:protection"}, {lvl: 1s, id: "minecraft:fire_protection"}, {lvl: 2s, id: "minecraft:feather_falling"}, {lvl: 3s, id: "minecraft:blast_protection"}, {lvl: 4s, id: "minecraft:projectile_protection"}, {lvl: 5s, id: "minecraft:respiration"}, {lvl: 6s, id: "minecraft:aqua_affinity"}, {lvl: 7s, id: "minecraft:thorns"}, {lvl: 8s, id: "minecraft:depth_strider"}]}}, {id: "minecraft:leather_chestplate", Count: 65b, tag: {Damage: 0, display: {color: 3014747, Name: '{"text":"終焉ヲ告ゲル者"}'}, Enchantments: [{lvl: 0s, id: "minecraft:protection"}, {lvl: 1s, id: "minecraft:fire_protection"}, {lvl: 2s, id: "minecraft:feather_falling"}, {lvl: 3s, id: "minecraft:blast_protection"}, {lvl: 4s, id: "minecraft:projectile_protection"}, {lvl: 5s, id: "minecraft:respiration"}, {lvl: 6s, id: "minecraft:aqua_affinity"}, {lvl: 7s, id: "minecraft:thorns"}, {lvl: 8s, id: "minecraft:depth_strider"}]}}, {id: "minecraft:chorus_flower", Count: 65b, tag: {display: {Name: '{"text":"終焉ヲ告ゲル者"}'}, Enchantments: [{lvl: 20s, id: "minecraft:protection"}, {lvl: 1s, id: "minecraft:fire_protection"}, {lvl: 2s, id: "minecraft:feather_falling"}, {lvl: 3s, id: "minecraft:blast_protection"}, {lvl: 4s, id: "minecraft:projectile_protection"}, {lvl: 5s, id: "minecraft:respiration"}, {lvl: 6s, id: "minecraft:aqua_affinity"}, {lvl: 7s, id: "minecraft:thorns"}, {lvl: 8s, id: "minecraft:depth_strider"}]}}], CanPickUpLoot: 0b, DeathLootTable: "time_limit:noloot/shinen", HurtTime: 0s, ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 2147483647, Id: 14, Amplifier: 127b}, {Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 2147483647, Id: 11, Amplifier: 3b}, {Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 2147483647, Id: 8, Amplifier: 4b}], CustomNameVisible: 1b, DrownedConversionTime: -1}
# 新星ノ王
summon zombie ~ ~1 ~ {IsBaby: 0b, Attributes: [{Base: 0.0d, Name: "minecraft:generic.armor_toughness"}, {Base: 0.0d, Name: "minecraft:generic.armor"}, {Base: 1024.0d, Name: "minecraft:generic.max_health"}, {Base: 60.0d, Name: "minecraft:generic.follow_range"}, {Base: 0.37d, Name: "minecraft:generic.movement_speed"}, {Base: 3.0d, Name: "minecraft:generic.attack_damage"}, {Base: 1.0d, Name: "minecraft:generic.knockback_resistance"}], Invulnerable: 0b, FallFlying: 0b, PortalCooldown: 0, AbsorptionAmount: 0.0f, InWaterTime: -1, FallDistance: 0.0f, DeathTime: 0s, HandDropChances: [0.000f, 0.000f], PersistenceRequired: 1b, Tags: ["AbyssWarp", "SkillMob", "TypeChecked", "NewStar_King", "Enemy","Boss","BossEnemy"], Health: 1024f, LeftHanded: 0b, Air: 300s, OnGround: 0b, HandItems: [{id: "minecraft:diamond_pickaxe", Count: 65b, tag: {Damage: 0, display: {Name: '{"text":"全能ノ一"}'}, Enchantments: [{lvl: 10s, id: "minecraft:sharpness"}, {lvl: 10s, id: "minecraft:knockback"}, {lvl: 10s, id: "minecraft:fire_aspect"}, {lvl: 10s, id: "minecraft:efficiency"}, {lvl: 10s, id: "minecraft:unbreaking"}, {lvl: 10s, id: "minecraft:fortune"}]}}, {id: "minecraft:shield", Count: 1b, tag: {BlockEntityTag: {Patterns: [{Pattern: "dls", Color: 3}, {Pattern: "drs", Color: 3}, {Pattern: "sc", Color: 3}, {Pattern: "mr", Color: 7}, {Pattern: "tts", Color: 9}, {Pattern: "bts", Color: 9}, {Pattern: "cbo", Color: 9}, {Pattern: "cr", Color: 9}, {Pattern: "mc", Color: 3}, {Pattern: "bo", Color: 15}, {Pattern: "bo", Color: 3}, {Pattern: "flo", Color: 15}], Base: 7},RepairCost: 1000000000, HideFlags: 32, display: {Lore: ['{"text":"§3時と共に強くなる盾。"}'], Name: '{"text":"§f§ktime§3§l時送りの盾§f§ktime"}'}, Enchantments: [{lvl: 13s, id: "minecraft:unbreaking"}, {lvl: 13s, id: "minecraft:knockback"}, {lvl: 13s, id: "minecraft:sharpness"}], Damage: 0, version: 1, AttributeModifiers: [{Amount: 0.13d, Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 2], Name: "SPD"}, {Amount: 0.13d, Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 2, 0, 3], Name: "KB"}, {Amount: 0.13d, Slot: "offhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 2, 0, 4], Name: "ATK"}, {Amount: 0.13d, Slot: "offhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 2, 0, 5], Name: "AMR"}, {Amount: 0.13d, Slot: "offhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 2, 0, 6], Name: "ATS"}, {Amount: 0.13d, Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 8], Name: "SPD"}, {Amount: 0.13d, Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 1, 0, 9], Name: "KB"}, {Amount: 0.13d, Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 1, 0, 10], Name: "ATK"}, {Amount: 0.13d, Slot: "mainhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 1, 0, 11], Name: "AMR"}, {Amount: 0.13d, Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 1, 0, 12], Name: "ATS"}]}}], ArmorDropChances: [0.0f, 0.0f, 0.0f, 0.0f], CustomName: '{"text":"§1§k|§9§k|§1§k|§b§k|§1§k|§r §3§l新星ノ王 §1§k|§b§k|§1§k|§9§k|§1§k|§r"}', CanBreakDoors: 0b, Fire: -1s, ArmorItems: [{id: "minecraft:leather_boots", Count: 65b, tag: {Damage: 0, display: {color: 3014747, Name: '{"text":"終焉ヲ告ゲル者"}'}, Enchantments: [{}], AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Operation:0,Slot:"feet",UUID:[I; 0, 6, 0, 1]}]}}, {id: "minecraft:leather_leggings", Count: 65b, tag: {Damage: 0, display: {color: 3014747, Name: '{"text":"終焉ヲ告ゲル者"}'}, Enchantments: [{}], AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Operation:0,Slot:"legs",UUID:[I; 0, 5, 0, 1]}]}}, {id: "minecraft:leather_chestplate", Count: 65b, tag: {Damage: 0, display: {color: 3014747, Name: '{"text":"終焉ヲ告ゲル者"}'},Enchantments:[{}], AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Operation:0,Slot:"chest",UUID:[I; 0, 4, 0, 1]}]}}, {id: "minecraft:beacon", Count: 65b, tag: {display: {Name: '{"text":"終焉ヲ告ゲル者"}'}, Enchantments: [{lvl: 20s, id: "minecraft:protection"}, {lvl: 20s, id: "minecraft:fire_protection"}, {lvl: 20s, id: "minecraft:feather_falling"}, {lvl: 20s, id: "minecraft:blast_protection"}, {lvl: 20s, id: "minecraft:projectile_protection"}, {lvl: 20s, id: "minecraft:respiration"}, {lvl: 20s, id: "minecraft:aqua_affinity"}, {lvl: 20s, id: "minecraft:thorns"}, {lvl: 20s, id: "minecraft:depth_strider"}]}}], CanPickUpLoot: 0b, DeathLootTable: "usb:events/shinen", HurtTime: 0s, ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 2147483647, Id: 14, Amplifier: 127b}, {Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 2147483647, Id: 8, Amplifier: 4b}], CustomNameVisible: 1b, DrownedConversionTime: -1}
# playsound
# fighting tagのみにしようね
#playsound entity.wither.spawn hostile @a ~ ~ ~
#playsound block.portal.trigger block @a ~ ~ ~ 0.3 2
# particle
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 500
particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 500
# title
#title @a title {"text":"§4§k|§c§k|§4§k|§d§k|§4§k|§r §5§l深淵ノ王 §4§k|§d§k|§4§k|§c§k|§4§k|§r §1§k|§9§k|§1§k|§b§k|§1§k|§r §3§l新星ノ王 §1§k|§b§k|§1§k|§9§k|§1§k|§r"}
#title @a subtitle {"text":"§4§ka§c§kb§4§ky§d§ks§4§ks§r～時を司りしもの達～§1§ks§9§kt§1§ka§b§kr§1§ks§r","color":"dark_red","bold":true}
# debug用というより複数回すぽーんするならこういう処理しないとだめかも
#scoreboard players set $25 Boss_x 25
#scoreboard players set $30720 Boss_x 30720
#scoreboard players set $percent_10 Boss_x 10