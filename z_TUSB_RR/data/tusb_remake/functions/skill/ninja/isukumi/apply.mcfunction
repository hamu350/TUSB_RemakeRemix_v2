#> tusb_remake:skill/ninja/isukumi/apply
### 雪玉を居縮にする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 雪玉を居縮に設定
execute as @e[distance=0,type=snowball,limit=1] run data merge entity @s {Tags:[Isukumi,Projectile,FlyingObject,Driftable,TypeChecked],NoGravity:true,Item:{id:"minecraft:string",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:1s}]}},PortalCooldown:10}
scoreboard players operation @e[distance=0,type=snowball,limit=1] ProjectileSkill = _ ActivatedSkill

### 居縮の演出有効化
function tusb_remake:skill/ninja/isukumi/schedule/

### 飛んでるやつの判定有効化
function tusb_remake:skill/projectile/
