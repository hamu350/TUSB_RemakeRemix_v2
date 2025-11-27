#> tusb_remake:skill/ninja/suriken/apply
### 雪玉を手裏剣にする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 最近なげた手裏剣のリストがなければ初期化
function #oh_my_dat:please
execute unless data storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.SurikenCount run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.SurikenCount set value [{f:0},{f:0},{f:0},{f:0},{f:0},{f:0},{f:0},{f:0},{f:0},{f:0}]
### 最近なげた手裏剣の数を取得
execute store result score _ TUSB if data storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.SurikenCount[{f:1}]
execute if score _ TUSB matches 6.. run scoreboard players set _ TUSB 5

### 手裏剣の威力を変更
scoreboard players operation _ ActivatedSkill += _ TUSB

### 雪玉を手裏剣に設定
execute as @e[distance=0,type=snowball,limit=1] run data merge entity @s {Tags:[Suriken,Projectile,FlyingObject,Driftable,TypeChecked],NoGravity:true,Item:{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:1s}]}},PortalCooldown:10}
scoreboard players operation @e[distance=0,type=snowball,limit=1] ProjectileSkill = _ ActivatedSkill

### 手裏剣の履歴の最後に手裏剣を入れる
tag @s add SurikenCount
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.SurikenCount[-1].f set value 1
### 手裏剣カウントの有効化
execute in minecraft:overworld run schedule function tusb_remake:skill/ninja/suriken/count/ 1t

### 手裏剣の演出有効化
function tusb_remake:skill/ninja/suriken/schedule/

### 飛んでるやつの判定有効化
function tusb_remake:skill/projectile/
