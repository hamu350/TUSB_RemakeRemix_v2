#> tusb_remake:entity/check_kasap
# ルカナンのかかった敵の判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: ルカナンのダメージが防具貫通/耐性貫通している問題の修正

## ルカナン中のエンティティのストレージ
function #oh_my_dat:please

### エンティティのHPを取得
execute store result score @s HP run data get entity @s Health 100
### 前のHPと比較
execute store result score _ TUSB run data get storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.Health 100
### 受けたダメージを取得
scoreboard players operation _ TUSB -= @s HP
### ルカナンのレベルに応じて補正
scoreboard players operation _ TUSB *= @s KasapLevel

### 受けたダメージを設定
data modify storage score_damage: Argument set value {Damage:0.00d,DamageType:"None",BypassArmor:false,BypassResistance:false,DisableParticle:true}
execute store result storage score_damage: Argument.Damage double 0.01 run scoreboard players get _ TUSB
### 受けたダメージが０以上なら、追加でダメージを与える
execute if score _ TUSB matches 1.. run function score_damage:api/attack

### HPを記録
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.Health set from entity @s Health

### ルカナンの効果時間を更新
scoreboard players remove @s KasapTimer 1
execute if score @s KasapTimer matches ..0 run tag @s remove InKasap
