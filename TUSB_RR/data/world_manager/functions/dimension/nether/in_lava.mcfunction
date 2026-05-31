#> world_manager:dimension/nether/in_lava
# 
# 煉獄溶岩処理

# 演出
particle minecraft:lava ~ ~ ~ 1 1 1 1 20 force @a[distance=..8]
playsound minecraft:entity.warden.heartbeat player @a[distance=..4] ~ ~ ~ 0.8 2 0.0

# ダメージ
data modify storage score_damage: Argument set value {Damage:20,EPF:0,BypassArmor:true,BypassResistance:true,Type:"None",DisableParticle:true}
function score_damage:api/attack
