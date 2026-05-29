#> asset:villager/0206.bekemann/summon/2.summon

# まず取引情報を取得します
function asset:villager/0206.bekemann/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",Brain: {memories: {}}, HurtByTimestamp: 0, Attributes: [{Base: 0.5d, Name: "minecraft:generic.movement_speed"}, {Base: 1024.0d, Name: "minecraft:generic.max_health"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 1, LastGossipDecay: 17521032L, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 0b, Tags: ["TypeChecked", "ShieldTried"], Age: 0, Motion: [0.0d, 0.0d, 0.0d], Health: 1024.0f, Silent: 1b, LeftHanded: 0b, Air: 300s, OnGround: 0b, NoAI: 1b, HandItems: [{id: "minecraft:pufferfish", Count: 1b}, {}], RestocksToday: 0, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '{"extra":[{"text":"bakeman"}],"text":""}', Fire: 0s, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:shepherd", level: 5, type: "minecraft:plains"}, HurtTime: 0s, ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 6, Amplifier: 41b}, {Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 10, Amplifier: 127b}, {Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 11, Amplifier: 127b}, {Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 14, Amplifier: 100b}], Inventory: []}
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: villager
function #util:spawn
