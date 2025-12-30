#> asset:villager/0005.matukiyo/summon/2.summon

# まず取引情報を取得します
function asset:villager/0005.matukiyo/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",NoAI:true,Invulnerable:true,Tags:["TypeChecked","SystemEntity"],Brain: {memories: {}}, HurtByTimestamp: 5196, Attributes: [{Base: 0.0d, Name: "minecraft:generic.knockback_resistance"}, {Base: 20.0d, Name: "minecraft:generic.max_health"}, {Base: 48.0d, Name: "minecraft:generic.follow_range"}, {Base: 0.03d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}, {Base: 0.0d, Name: "minecraft:generic.armor"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 151, LastGossipDecay: 10557851L, HandDropChances: [0.085f, 0.0f], PersistenceRequired: 1b, Tags: ["TypeChecked", "NewShopStaff", "ShieldTried"], Age: 0, Motion: [-1.1542535853040846E-8d, -0.0784000015258789d, 1.2039301272084547E-4d], Health: 20.0f, LeftHanded: 0b, Air: 300s, OnGround: 1b, Rotation: [0.007888794f, 1.7463794f], HandItems: [{}, {}], RestocksToday: 0, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '{"text":"マツキヨ"}', Pos: [-57.499838071558145d, 19.0625d, 9.32511568875639d], Fire: -1s, ArmorItems: [{}, {}, {}, {id: "minecraft:damaged_anvil", Count: 1b}], CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:farmer", level: 100, type: "minecraft:plains"}, HurtTime: 0s, Inventory: [], CustomNameVisible: 1b}
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: villager
function #util:spawn
