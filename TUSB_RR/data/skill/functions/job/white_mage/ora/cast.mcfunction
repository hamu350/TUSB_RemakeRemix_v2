#> skill:job_skill/white_mage/ora/cast

playsound entity.illusioner.prepare_blindness master @a[distance=..32] ~ ~ ~ 2 1.2 0.1
### 4097?
particle end_rod ~ ~0.5 ~ 15 15 15 1 700 force @a[distance=..64]

### 30 -> 50 -> 75
execute if score @s ActivatedSkill matches 4260..4269 run data modify storage score_damage: Argument set value {Damage:300.00,DamageType:"Projectile"}

execute as @e[distance=..15,sort=nearest,limit=5,type=#lib:mob,tag=Enemy] at @s run function score_damage:api/attack
execute as @s at @s run effect give @a[distance=..15] haste 30 1
execute as @s at @s run effect give @a[distance=..15] regeneration 30 3
execute as @a[distance=..15] at @s run function player_manager:effect/clear_bad_effect
execute as @a[distance=..15] at @s run scoreboard players add @s HealCount 15
