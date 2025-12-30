#> asset:villager/0007.koueki_ghost/summon/2.summon

# まず取引情報を取得します
function asset:villager/0007.koueki_ghost/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",NoAI:true,Invulnerable:true,Tags:["TypeChecked","SystemEntity"],Brain: {memories: {}}, HurtByTimestamp: 0, Attributes: [{Base: 0.0d, Name: "minecraft:generic.knockback_resistance"}, {Base: 666.0d, Name: "minecraft:generic.max_health"}, {Base: 48.0d, Name: "minecraft:generic.follow_range"}, {Base: 0.0d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}, {Base: 0.0d, Name: "minecraft:generic.armor"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 150, LastGossipDecay: 10581848L, HandDropChances: [0.085f, 0.0f], PersistenceRequired: 0b, Tags: ["TypeChecked", "ShieldTried"], Age: 0, Motion: [0.0d, 0.0d, 0.0d], Health: 666.0f, Silent: 1b, LeftHanded: 0b, Air: 300s, OnGround: 1b, NoAI: 1b, Rotation: [90.0f, 0.0f], HandItems: [{}, {}], RestocksToday: 0, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '{"text":"§8§l交易島の霊"}', Pos: [-47.878228532929164d, 30.375d, 8.450607384747595d], Fire: -1s, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:librarian", level: 100, type: "minecraft:plains"}, HurtTime: 0s, ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 2106129293, Id: 14, Amplifier: 9b}], Inventory: [], CustomNameVisible: 1b}
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: villager
function #util:spawn
