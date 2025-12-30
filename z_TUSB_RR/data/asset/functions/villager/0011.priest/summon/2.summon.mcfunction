#> asset:villager/0011.priest/summon/2.summon

# まず取引情報を取得します
function asset:villager/0011.priest/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",NoAI:true,Invulnerable:true,Tags:["TypeChecked","SystemEntity"],Brain: {memories: {}}, HurtByTimestamp: 725, Attributes: [{Base: 1.0d, Name: "minecraft:generic.knockback_resistance"}, {Base: 100.0d, Name: "minecraft:generic.max_health"}, {Base: 48.0d, Name: "minecraft:generic.follow_range"}, {Base: 0.03d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}, {Base: 0.0d, Name: "minecraft:generic.armor"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 150, LastGossipDecay: 10581851L, HandDropChances: [0.085f, 0.0f], PersistenceRequired: 0b, Tags: ["TypeChecked", "ShopStaff", "ShieldTried"], Age: 0, Motion: [-3.4627606683148084E-8d, -0.0784000015258789d, 1.203930055448627E-4d], Health: 100.0f, LeftHanded: 0b, Air: 300s, OnGround: 1b, CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:librarian", level: 1, type: "minecraft:plains"}, HurtTime: 0s, ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 55188521, Id: 2, Amplifier: 120b}], Inventory: [], CustomNameVisible: 1b}
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: villager
function #util:spawn
