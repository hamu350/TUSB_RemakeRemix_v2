#> asset:villager/0028.towerbank_operator/summon/2.summon

# まず取引情報を取得します
function asset:villager/0028.towerbank_operator/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",NoAI:true,Invulnerable:true,Tags:["TypeChecked","SystemEntity"],Brain: {memories: {}}, HurtByTimestamp: 725, Attributes: [{Base: 0.0d, Name: "minecraft:generic.knockback_resistance"}, {Base: 20.0d, Name: "minecraft:generic.max_health"}, {Base: 48.0d, Modifiers: [{Amount: -0.11967450090734444d, Operation: 1, UUID: [I; -1529706939, -1456781472, -1400013017, 1211258452], Name: "Random spawn bonus"}], Name: "minecraft:generic.follow_range"}, {Base: 0.1d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}, {Base: 0.0d, Name: "minecraft:generic.armor"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 150, LastGossipDecay: 10620705L, HandDropChances: [0.085f, 0.0f], PersistenceRequired: 0b, Tags: ["TypeChecked", "ShieldTried"], Age: 0, Motion: [-0.0012617348044476348d, -0.0784000015258789d, 4.4437288525239624E-4d], Health: 20.0f, LeftHanded: 0b, Air: 300s, OnGround: 1b, Rotation: [70.60097f, 0.0f], HandItems: [{}, {}], RestocksToday: 0, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '{"text":"タワーバンク管理人"}', Pos: [-2814.2441798239984d, 77.5d, -384.9422201214122d], Fire: -1s, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:librarian", level: 1, type: "minecraft:plains"}, HurtTime: 0s, Inventory: [], CustomNameVisible: 1b}
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: villager
function #util:spawn
