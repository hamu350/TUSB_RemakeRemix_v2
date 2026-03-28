#> asset:villager/0104.kinokoha/summon/2.summon

# まず取引情報を取得します
function asset:villager/0104.kinokoha/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",NoAI:true,Invulnerable:true,Tags:["TypeChecked","SystemEntity"],Brain: {memories: {}}, HurtByTimestamp: 0, Attributes: [{Base: 0.0d, Name: "minecraft:generic.knockback_resistance"}, {Base: 20.0d, Name: "minecraft:generic.max_health"}, {Base: 48.0d, Name: "minecraft:generic.follow_range"}, {Base: 0.03d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}, {Base: 0.0d, Name: "minecraft:generic.armor"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 150, LastGossipDecay: 10622794L, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 0b, Tags: ["TypeChecked", "ShieldTried"], Age: 0, Motion: [0.0d, -0.0784000015258789d, 0.0d], Health: 20.0f, Silent: 1b, LeftHanded: 0b, Air: 300s, OnGround: 1b, Rotation: [54.192703f, 0.0f], HandItems: [{}, {}], RestocksToday: 0, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '{"text":"キノコ派"}', Pos: [-1938.329080631349d, 120.5d, -35.34471925950129d], Fire: -1s, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:armorer", level: 101, type: "minecraft:plains"}, HurtTime: 0s, Inventory: [], CustomNameVisible: 1b}
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: villager
function #util:spawn
