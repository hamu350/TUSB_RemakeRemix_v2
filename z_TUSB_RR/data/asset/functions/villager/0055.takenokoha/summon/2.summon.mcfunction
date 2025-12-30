#> asset:villager/0055.takenokoha/summon/2.summon

# まず取引情報を取得します
function asset:villager/0055.takenokoha/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",NoAI:true,Invulnerable:true,Tags:["TypeChecked","SystemEntity"],Brain: {memories: {}}, HurtByTimestamp: 0, Attributes: [{Base: 0.0d, Name: "minecraft:generic.armor"}, {Base: 48.0d, Name: "minecraft:generic.follow_range"}, {Base: 20.0d, Name: "minecraft:generic.max_health"}, {Base: 0.5d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.knockback_resistance"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 150, LastGossipDecay: 7393945L, HandDropChances: [0.085f, 0.0f], PersistenceRequired: 1b, Tags: ["TypeChecked"], Age: 0, Motion: [0.0d, -0.0784000015258789d, 0.0d], Health: 20.0f, LeftHanded: 0b, Air: 300s, OnGround: 1b, Rotation: [7.428734f, 0.0f], HandItems: [{}, {}], RestocksToday: 0, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '{"text":"たけのこ派"}', Pos: [168.53763352203413d, 64.0d, -130.74874970722294d], Fire: -1s, ArmorItems: [{}, {}, {}, {id: "minecraft:spruce_log", Count: 1b}], CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:farmer", level: 2000000, type: "minecraft:plains"}, HurtTime: 0s, Inventory: [], CustomNameVisible: 1b}
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: villager
function #util:spawn
