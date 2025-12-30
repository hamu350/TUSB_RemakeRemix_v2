#> asset:villager/0022.orange/summon/2.summon

# まず取引情報を取得します
function asset:villager/0022.orange/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",NoAI:true,Invulnerable:true,Tags:["TypeChecked","SystemEntity"],Brain: {memories: {}}, HurtByTimestamp: 0, Attributes: [{Base: 0.0d, Name: "minecraft:generic.knockback_resistance"}, {Base: 20.0d, Name: "minecraft:generic.max_health"}, {Base: 48.0d, Name: "minecraft:generic.follow_range"}, {Base: 0.03d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}, {Base: 0.0d, Name: "minecraft:generic.armor"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 150, LastGossipDecay: 10615423L, HandDropChances: [0.085f, 0.0f], PersistenceRequired: 0b, Tags: ["TypeChecked", "ShieldTried"], Age: 0, Motion: [0.0d, 0.0d, 0.0d], Health: 20.0f, Silent: 1b, LeftHanded: 0b, Air: 300s, OnGround: 1b,  NoAI: 1b, Rotation: [0.0f, 0.0f], HandItems: [{}, {}], RestocksToday: 0, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '{"text":"§6§n§lオレンジ"}', Pos: [-1895.5d, 4.3125d, -80.5d], Fire: -1s, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:farmer", level: 100, type: "minecraft:plains"}, HurtTime: 0s, Inventory: [], CustomNameVisible: 1b}
# 召喚します。まず乗り物となる経験値を召喚
summon experience_orb ~ ~ ~ {Age:6000,Tags:["SummonMob"]}
# そしてstorageから乗せます
data modify entity @e[tag=SummonMob,limit=1] Passengers append from storage asset: villager
# 騎乗させたことで座標がずれているので修正します
data modify entity @e[tag=SpawnMob,limit=1] Pos set from entity @e[tag=SummonMob,limit=1] Pos

# 経験値をkillし、村人のtagも消します
kill @e[tag=SummonMob,limit=1]
tag @e[tag=SpawnMob,limit=1] remove SpawnMob