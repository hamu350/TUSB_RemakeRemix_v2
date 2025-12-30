#> asset:villager/0041.clean_officer/summon/2.summon

# まず取引情報を取得します
function asset:villager/0041.clean_officer/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",NoAI:true,Invulnerable:true,Tags:["TypeChecked","SystemEntity"],Brain: {memories: {}}, HurtByTimestamp: 0, Attributes: [{Base: 0.0d, Name: "minecraft:generic.armor"}, {Base: 48.0d, Name: "minecraft:generic.follow_range"}, {Base: 20.0d, Name: "minecraft:generic.max_health"}, {Base: 0.5d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.knockback_resistance"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 150, LastGossipDecay: 7366052L, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 0b, Tags: ["TypeChecked"], Age: 0, Motion: [0.0d, 0.009800000190734865d, 0.0d], Health: 20.0f, LeftHanded: 0b, Air: 300s, OnGround: 0b, Rotation: [270.0051f, 40.0f], HandItems: [{}, {}], RestocksToday: 0, ArmorDropChances: [0.0f, 0.0f, 0.0f, 0.0f], CustomName: '{"text":"§3クリーン・オフィサー"}', Pos: [1.6999999880790708d, 120.04999995231628d, -2216.500071504218d], Fire: -1s, ArmorItems: [{}, {}, {}, {id: "minecraft:string", Count: 1b, tag: {Enchantments: []}}], CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:weaponsmith", level: 2000008, type: "minecraft:plains"}, HurtTime: 0s, Inventory: [], CustomNameVisible: 1b}
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: villager
function #util:spawn
