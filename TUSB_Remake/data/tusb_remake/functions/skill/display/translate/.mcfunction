#> tusb_remake:skill/display/translate/
## スキルテーブルを設定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 選択肢１つ分を作る
data modify storage tusb_remake: skill_choice set from storage tusb_remake: list[-1]

### 選択できるスキルの名前を取得する
function tusb_remake:skill/display/translate/get_name

### 通常の範囲を設定
### 数字のリストに追加できるなら数字です！
data modify storage tusb_remake: _ set value [0]
data modify storage tusb_remake: _ append from storage tusb_remake: skill_choice.range
### 追加できないなら文字なので「なし」と表示できるようにする
execute unless data storage tusb_remake: _[1] run data modify storage tusb_remake: skill_choice.range set value {json:'{"text":"なし","color":"white"}',value:""}
### 追加できたなら数字なので、数字として表示できるようにする
execute if data storage tusb_remake: _[1] run data modify storage tusb_remake: skill_choice.range set value {value:0}
execute if data storage tusb_remake: _[1] run data modify storage tusb_remake: skill_choice.range.json set from storage tusb_remake: jsons[-1].range
execute if data storage tusb_remake: _[1] run data modify storage tusb_remake: skill_choice.range.value set from storage tusb_remake: _[1]

### 効果時間を設定
### 数字のリストに追加できるなら数字です！
data modify storage tusb_remake: _ set value [0]
data modify storage tusb_remake: _ append from storage tusb_remake: skill_choice.duration
### 追加できたなら数字なので、数字として表示できるようにする
execute if data storage tusb_remake: _[1] run data modify storage tusb_remake: skill_choice.duration set value {value:0}
execute if data storage tusb_remake: _[1] run data modify storage tusb_remake: skill_choice.duration.json set from storage tusb_remake: jsons[-1].duration
execute if data storage tusb_remake: _[1] run data modify storage tusb_remake: skill_choice.duration.value set from storage tusb_remake: _[1]
### 追加できてないけど存在するなら文字なので、文字として表示できるようにする
execute unless data storage tusb_remake: _[1] if data storage tusb_remake: skill_choice.duration run data modify storage tusb_remake: _ set from storage tusb_remake: skill_choice.duration
execute unless data storage tusb_remake: _[1] if data storage tusb_remake: skill_choice.duration run data modify storage tusb_remake: skill_choice.duration set value {}
execute unless data storage tusb_remake: _[1] if data storage tusb_remake: skill_choice.duration run data modify storage tusb_remake: skill_choice.duration.json set from storage tusb_remake: jsons[-1].duration
execute unless data storage tusb_remake: _[1] if data storage tusb_remake: skill_choice.duration run data modify storage tusb_remake: skill_choice.duration.value set from storage tusb_remake: _
### 存在しないなら「なし」と表示できるようにする
execute unless data storage tusb_remake: skill_choice.duration run data modify storage tusb_remake: skill_choice.duration set value {json:'{"text":"なし","color":"white"}',value:""}

### スニークがありなら
execute if data storage tusb_remake: skill_choice.sneak run data modify storage tusb_remake: skill_choice.sneak.json set from storage tusb_remake: jsons[-1].sneak

### スニークの範囲を設定
### 数字のリストに追加できるなら数字です！
data modify storage tusb_remake: _ set value [0]
data modify storage tusb_remake: _ append from storage tusb_remake: skill_choice.sneak.range
### 追加できないなら文字なので「なし」と表示できるようにする
execute unless data storage tusb_remake: _[1] run data modify storage tusb_remake: skill_choice.sneak.range set value {json:'{"text":"なし","color":"white"}',value:""}
### 追加できたなら数字なので、数字として表示できるようにする
execute if data storage tusb_remake: _[1] run data modify storage tusb_remake: skill_choice.sneak.range set value {value:0}
execute if data storage tusb_remake: _[1] run data modify storage tusb_remake: skill_choice.sneak.range.json set from storage tusb_remake: jsons[-1].sneak_range
execute if data storage tusb_remake: _[1] run data modify storage tusb_remake: skill_choice.sneak.range.value set from storage tusb_remake: _[1]

### 変換が終わったら、選択肢に追加してあげる
data modify storage tusb_remake: skill_choices append from storage tusb_remake: skill_choice

### 変換し終わったスキルをリストから削除
data remove storage tusb_remake: list[-1]
data remove storage tusb_remake: jsons[-1]

### まだスキルが残っていたら繰り返し
execute if data storage tusb_remake: list[0] run function tusb_remake:skill/display/translate/
