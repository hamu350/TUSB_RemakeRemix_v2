#> tusb_remake:enemy/skill/infinity_boss/isf/under_half/
#
# 体力半分以下のISFスキル
#
# @within function tusb_remake:enemy/skill/infinity_boss/isf/

# トカルト化
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:[TypeChecked,CooldownRequiredLong,TocultArea],PortalCooldown:1200}

# 松明.zip召喚
    execute at @a[distance=..32] run summon spawner_minecart ~ ~ ~ {Delay:0,MinSpawnDelay:32767,MaxSpawnDelay:32767,SpawnCount:1,SpawnRange:8,RequiredPlayerRange:99,MaxNearbyEntities:99,SpawnData:{entity:{id:"experience_orb",Age:5998,Motion:[0.0,-2.0,0.0],Passengers:[{Glowing:true,Tags:[CooldownRequiredLong],PortalCooldown:1200,NoGravity: 1b, Small: 1b, Health: 1.0f, Attributes: [{Base: 1.0d, Name: "generic.max_health"}], Invulnerable: 1b, ShowArms: 0b, Marker: 0b, HandItems: [{id: "minecraft:torch", Count: 64b, tag: {HideFlags: 2, AttributeModifiers: [{AttributeName: "generic.max_health", Operation: 1, UUID: [I; 0, 7, 0, 1], Amount: 1.0E-8d, Name: "plus"}]}}, {}], DisabledSlots: 2039326, DeathTime: -20s, Pose: {RightArm: [80.0f, -40.0f, -110.0f], Head: [45.0f, 180.0f, 35.0f]}, ArmorItems: [{id: "minecraft:stone", Count: 65b, tag: {AttributeModifiers: [{AttributeName: "generic.max_health", Operation: 1, UUID: [I; 0, 6, 0, 1], Amount: -1, Name: "minus"}]}}, {}, {}, {id: "minecraft:ice", Count: 65b}], NoBasePlate: 1b, id: "minecraft:armor_stand", Invisible: 1b, ActiveEffects: [{Duration: 2147483647, Id: 6b, Amplifier: 127b, ShowParticles: 0b}]}]}}}

# 魔弾召喚
    execute positioned ~ ~5 ~ run function asset:mob/0318.magic_bullet_shooter/summon/2.summon