#> tusb_remake:skill/archer/stakes_fire/apply/
### 次に弓を使うと、エンチェイスがかかる
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### リメイク：成功確率を少しアップ
### まずは負け確定にしておく
data modify storage tusb_remake: stakes_result set value false
### レベル１なら50%の確率で勝ちに
execute if score _ ActivatedSkill matches 3200 if predicate tusb_remake:random/stakes_fire/1 run data modify storage tusb_remake: stakes_result set value true
### レベル２なら70%の確率で勝ちに
execute if score _ ActivatedSkill matches 3201 if predicate tusb_remake:random/stakes_fire/2 run data modify storage tusb_remake: stakes_result set value true
### レベル３なら90%の確率で勝ちに
execute if score _ ActivatedSkill matches 3202..3209 if predicate tusb_remake:random/stakes_fire/3 run data modify storage tusb_remake: stakes_result set value true

# タグ判別追加
### 負け
execute if data storage tusb_remake: {stakes_result:false} anchored eyes positioned ^ ^ ^ anchored feet as @e[distance=..2,type=#tusb_remake:arrow,tag=!StatesFire,nbt={life:0s},sort=nearest,limit=1] run function tusb_remake:skill/archer/stakes_fire/apply/lose
### 勝ち
execute if data storage tusb_remake: {stakes_result:true} anchored eyes positioned ^ ^ ^ anchored feet as @e[distance=..2,type=#tusb_remake:arrow,tag=!StatesFire,nbt={life:0s},sort=nearest,limit=1] run function tusb_remake:skill/archer/stakes_fire/apply/win

### ステークスファイアの演出有効化
function tusb_remake:skill/archer/stakes_fire/schedule/
