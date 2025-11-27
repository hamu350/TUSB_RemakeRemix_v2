#> tusb_remake:skill/display/check
## 設定できるレベルになっているかどうかをチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 最後のスキルの最初に覚えるレベルを取得
execute store result score _ TUSB run data get storage tusb_remake: skill_choices[-1].level[0]
### 最後のスキルが覚えられるなら設定できるように表示
execute if score @s Level >= _ TUSB run data modify storage tusb_remake: list append from storage tusb_remake: skill_choices[-1]

### 最後のスキルがなくなるまで繰り返し
data remove storage tusb_remake: skill_choices[-1]
execute if data storage tusb_remake: skill_choices[-1] run function tusb_remake:skill/display/check
