#> tusb_remake:skill/summoner/tsuntsun/fungus/attack/snow_golem
# スノーゴーレムによる攻撃をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 雪玉を出す
execute anchored eyes positioned ^ ^ ^1 anchored feet run summon minecraft:snowball ~ ~ ~ {Fire:2s,Tags:[TsuntsunSnowball,Projectile,FlyingObject,Driftable,TypeChecked],NoGravity:true,Item:{id:"minecraft:cobblestone",Count:1b}}
execute anchored eyes positioned ^ ^ ^1 anchored feet run scoreboard players operation @e[distance=0,type=snowball,limit=1] ProjectileSkill = _ ActivatedSkill
### モーション代入
data modify storage math: in set from entity @s Rotation
function #math:motion
execute anchored eyes positioned ^ ^ ^1 anchored feet run data modify entity @e[distance=0,type=snowball,limit=1] Motion set from storage math: out

playsound minecraft:entity.ghast.shoot master @a[distance=..16] ~ ~ ~ 1 2 1

data modify storage tusb_remake: tsuntsun_attack.snow_golem set value true
