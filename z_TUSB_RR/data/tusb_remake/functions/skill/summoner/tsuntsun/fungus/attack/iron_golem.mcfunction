#> tusb_remake:skill/summoner/tsuntsun/fungus/attack/iron_golem
# アイアンゴーレムによる攻撃をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.wither.hurt master @a[distance=..32] ~ ~ ~ 2 1.21 0.1
particle minecraft:block minecraft:magenta_stained_glass ~ ~0.5 ~ 1 0.2 1 0.1 30 force @a[distance=..32]

### 15 -> 30
execute if score _ ActivatedSkill matches 6240 run data modify storage score_damage: Argument set value {Damage:15.00,DamageType:"Projectile"}
execute if score _ ActivatedSkill matches 6241..6249 run data modify storage score_damage: Argument set value {Damage:30.00,DamageType:"Projectile"}

execute positioned ~-3 ~-2 ~-3 as @e[dx=6,dy=4,dz=6,type=#tusb_remake:mob,tag=Enemy] at @s unless block ~ ~-1 ~ minecraft:air run function score_damage:api/attack

data modify entity @s Motion set value [0d,0.1d,0d]
