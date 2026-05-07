#> skill:job_skill/archer/e_su/schedule/hit

### マルチヒット防止のエフェクト
effect give @s minecraft:saturation 10 127 true

execute at @s run playsound minecraft:block.beacon.ambient master @a[distance=..32] ~ ~ ~ 1.0 2 0.0
execute at @s run particle happy_villager ~ ~ ~ 1 1 1 0.25 100 force
data modify storage score_damage: Argument set value {Damage:200.00,DamageType:"Projectile"}
execute as @s run function score_damage:api/attack

