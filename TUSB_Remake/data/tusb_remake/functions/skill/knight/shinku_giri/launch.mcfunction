#> tusb_remake:skill/knight/shinku_giri/launch
### 真空斬りの弾を発射
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 発動
data modify storage math: in set from entity @s Rotation
function #math:motion

execute anchored eyes positioned ^ ^ ^ anchored feet run summon minecraft:snowball ^ ^ ^1 {Tags:[AerialBlast,Projectile,FlyingObject,Driftable,TypeChecked],NoGravity:true,Item:{id:"minecraft:fire_charge",Count:1b}}
execute anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 as @e[distance=0,type=snowball,tag=AerialBlast,limit=1] run data modify entity @s Motion set from storage math: out
execute anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 run scoreboard players operation @e[distance=0,type=snowball,tag=AerialBlast,limit=1] ProjectileSkill = @s ActivatedSkill

### 真空斬りの演出有効化
function tusb_remake:skill/knight/shinku_giri/schedule/

### 飛んでるやつの判定有効化
function tusb_remake:skill/projectile/
