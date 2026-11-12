#> skill:job/ninja/taisosinnyo/enemy


data modify storage score_damage: Argument set value {Damage:45.00,DamageType:"None"}
function score_damage:api/attack

playsound entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 0.5 1.4 0
particle happy_villager ~ ~ ~ 0.1 10.0 0.1 0.0 50 force @a

function skill:job/ninja/taisosinnyo/player

execute if entity @e[tag=taisosinnyo] run schedule function skill:job/ninja/taisosinnyo/player 10t
