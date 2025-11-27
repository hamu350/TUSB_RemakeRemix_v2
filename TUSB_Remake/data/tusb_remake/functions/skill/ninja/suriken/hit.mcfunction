#> tusb_remake:skill/ninja/suriken/hit
# 手裏剣が当たった時

playsound entity.endermite.step master @a[distance=..32] ~ ~ ~ 2 0.7 1
particle item minecraft:nether_wart ~ ~1 ~ 0.2 0.3 0.2 0.25 60 force @e[type=player,distance=..80]

### リメイク：威力の変化を調整
### 30 -> 45 -> 60 -> 75 -> 90 -> 110 -> 135 -> 165 -> 200
execute if score @s PotentialSkill matches 2200 run data modify storage score_damage: Argument set value {Damage:30.00,DamageType:"Projectile"}
execute if score @s PotentialSkill matches 2201 run data modify storage score_damage: Argument set value {Damage:45.00,DamageType:"Projectile"}
execute if score @s PotentialSkill matches 2202 run data modify storage score_damage: Argument set value {Damage:60.00,DamageType:"Projectile"}
execute if score @s PotentialSkill matches 2203 run data modify storage score_damage: Argument set value {Damage:75.00,DamageType:"Projectile"}
execute if score @s PotentialSkill matches 2204 run data modify storage score_damage: Argument set value {Damage:90.00,DamageType:"Projectile"}
execute if score @s PotentialSkill matches 2205 run data modify storage score_damage: Argument set value {Damage:110.00,DamageType:"Projectile"}
execute if score @s PotentialSkill matches 2206 run data modify storage score_damage: Argument set value {Damage:135.00,DamageType:"Projectile"}
execute if score @s PotentialSkill matches 2207 run data modify storage score_damage: Argument set value {Damage:165.00,DamageType:"Projectile"}
execute if score @s PotentialSkill matches 2208..2209 run data modify storage score_damage: Argument set value {Damage:200.00,DamageType:"Projectile"}
function score_damage:api/attack
