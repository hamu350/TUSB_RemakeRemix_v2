#> tusb_remake:skill/summoner/tsuntsun/fungus/attack/snowball/hit
# つんつん雪玉が当たった時

# playsound minecraft:block.stone.break master @a[distance=..32] ~ ~ ~ 2 1 1
playsound entity.endermite.step master @a[distance=..32] ~ ~ ~ 2 0.7 1
particle item minecraft:nether_wart ~ ~1 ~ 0.2 0.3 0.2 0.25 60 force @e[type=player,distance=..80]

### 30 -> 60
execute if score @s PotentialSkill matches 6240 run data modify storage score_damage: Argument set value {Damage:30.00,DamageType:"Projectile"}
execute if score @s PotentialSkill matches 6241..6249 run data modify storage score_damage: Argument set value {Damage:60.00,DamageType:"Projectile"}
function score_damage:api/attack
