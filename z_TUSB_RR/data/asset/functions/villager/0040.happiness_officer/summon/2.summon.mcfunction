#> asset:villager/0040.happiness_officer/summon/2.summon

# まず取引情報を取得します
function asset:villager/0040.happiness_officer/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",NoAI:true,Invulnerable:true,Tags:["TypeChecked","SystemEntity"],Brain: {memories: {}}, HurtByTimestamp: 13434, Attributes: [{Base: 0.0d, Name: "minecraft:generic.armor"}, {Base: 48.0d, Name: "minecraft:generic.follow_range"}, {Base: 20.0d, Name: "minecraft:generic.max_health"}, {Base: 0.5d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.knockback_resistance"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 150, LastGossipDecay: 7366052L, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 0b, Tags: ["TypeChecked"], Age: 0, Motion: [0.0d, -0.0784000015258789d, 0.0d], Health: 19.0f, LeftHanded: 0b, Air: 300s, OnGround: 1b, Rotation: [267.14536f, 0.0f], HandItems: [{}, {}], RestocksToday: 0, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '{"text":"ハピネス・オフィサー"}', Pos: [-0.7126562086630365d, 116.0d, -2216.497742772298d], Fire: -1s, ArmorItems: [{}, {}, {}, {id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:water"}}], CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:shepherd", level: 100, type: "minecraft:plains"}, HurtTime: 0s, ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 2145445824, Id: 8, Amplifier: 0b}], Inventory: [], CustomNameVisible: 1b}
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: villager
function #util:spawn
