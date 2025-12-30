#> asset:villager/0008.buronto/summon/2.summon

# まず取引情報を取得します
function asset:villager/0008.buronto/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",NoAI:true,Invulnerable:true,Tags:["TypeChecked","SystemEntity"],Brain: {memories: {}}, HurtByTimestamp: 219625, Attributes: [{Base: 0.0d, Name: "minecraft:generic.knockback_resistance"}, {Base: 20.0d, Name: "minecraft:generic.max_health"}, {Base: 48.0d, Name: "minecraft:generic.follow_range"}, {Base: 0.03d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}, {Base: 0.0d, Name: "minecraft:generic.armor"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 150, LastGossipDecay: 10581863L, HandDropChances: [0.085f, 0.0f], PersistenceRequired: 1b, Tags: ["TypeChecked", "ShopStaff", "ShieldTried"], Age: 0, Motion: [0.0d, -0.0784000015258789d, 0.0d], Health: 20.0f, LeftHanded: 0b, Air: 300s, OnGround: 1b, Rotation: [163.55377f, 0.0f], HandItems: [{}, {}], RestocksToday: 0, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '{"text":"ブロント"}', Pos: [-66.35921782392174d, 21.5d, 29.97691044908493d], Fire: -1s, ArmorItems: [{}, {}, {}, {id: "minecraft:iron_trapdoor", Count: 1b}], CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:librarian", level: 106, type: "minecraft:plains"}, HurtTime: 0s, Inventory: [], CustomNameVisible: 1b}
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: villager
function #util:spawn
