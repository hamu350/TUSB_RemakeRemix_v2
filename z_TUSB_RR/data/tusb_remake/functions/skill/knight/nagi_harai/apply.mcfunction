#> tusb_remake:skill/knight/nagi_harai/apply
### 薙ぎ払いの対象に効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.ender_dragon.flap master @a[distance=..32] ~ ~ ~ 2 1.2 0
particle minecraft:crit ~ ~4.5 ~ 0.3 3 0.3 0.1 50 force

execute if score _ ActivatedSkill matches 1210 run data merge entity @s {FallDistance:25f}
execute if score _ ActivatedSkill matches 1210 run data modify entity @s ActiveEffects append value {Id:25,Duration:3,Amplifier:99b,ShowParticles:true}

execute if score _ ActivatedSkill matches 1211 run data merge entity @s {FallDistance:50f}
execute if score _ ActivatedSkill matches 1211 run data modify entity @s ActiveEffects append value {Id:25,Duration:5,Amplifier:99b,ShowParticles:true}

execute if score _ ActivatedSkill matches 1212..1219 run data merge entity @s {FallDistance:75f}
execute if score _ ActivatedSkill matches 1212..1219 run data modify entity @s ActiveEffects append value {Id:25,Duration:7,Amplifier:99b,ShowParticles:true}
