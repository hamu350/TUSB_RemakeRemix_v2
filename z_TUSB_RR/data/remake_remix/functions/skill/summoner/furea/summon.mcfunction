execute at @s run summon creeper ~ ~1 ~ {NoGravity:1b,powered:1b,ignited:1b,ExplosionRadius:0b,Fuse:30s,Invulnerable:1b,NoAI:1b,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:200000,ShowParticles:0b}]}
execute as @e[type=#tusb_remake:mob,distance=0] at @s run data modify storage score_damage: Argument set value {Damage:300.00,DamageType:"Blast"}
function score_damage:api/attack