#> asset:villager/0010.albite_2/summon/2.summon

# まず取引情報を取得します
function asset:villager/0010.albite_2/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",NoAI:true,Invulnerable:true,Tags:["TypeChecked","SystemEntity"],AbsorptionAmount:0.0f,Age:0,Air:300s,ArmorDropChances:[0.085f,0.085f,0.085f,0.085f],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:light_weighted_pressure_plate"}],Attributes:[{Base:0.0d,Name:"minecraft:generic.knockback_resistance"},{Base:20.0d,Name:"minecraft:generic.max_health"},{Base:48.0d,Name:"minecraft:generic.follow_range"},{Base:0.03d,Name:"minecraft:generic.movement_speed"},{Base:0.0d,Name:"minecraft:generic.armor_toughness"},{Base:0.0d,Name:"minecraft:generic.armor"}],Brain:{memories:{}},CanPickUpLoot:1b,CustomName:'{"text":"§eアルバイト"}',CustomNameVisible:1b,DeathTime:0s,FallDistance:0.0f,FallFlying:0b,Fire:-1s,FoodLevel:0b,ForcedAge:0,Gossips:[],HandDropChances:[0.085f,0.0f],HandItems:[{},{}],Health:20.0f,HurtByTimestamp:27734,HurtTime:0s,Inventory:[],Invulnerable:1b,LastGossipDecay:10581863L,LastRestock:0L,LeftHanded:0b,Motion:[-4.6170139908265565E-8d,-0.0784000015258789d,-1.203930055448627E-4d],OnGround:1b,PersistenceRequired:1b,PortalCooldown:0,Pos:[-65.49984539765828d,28.0625d,32.962814043177474d],RestocksToday:0,Rotation:[179.98087f,0.0f],Tags:["TypeChecked","ShopStaff","ShieldTried"],VillagerData:{level:104,profession:"minecraft:butcher",type:"minecraft:plains"},Xp:150}
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: villager
function #util:spawn
