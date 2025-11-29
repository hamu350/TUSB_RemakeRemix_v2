#> tusb_remake:skill/display/translate/get_name
## スキルテーブルを設定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 最初のスキル(並べ替えているので最後にある)
execute store result score _ TUSB run data get storage tusb_remake: list[-1].level[-1]
### 習得レベルを満たしていたら、そのスキルの名前を記録する
execute if score @s Level >= _ TUSB run data modify storage tusb_remake: skill_choice.name set from storage tusb_remake: list[-1].name[-1]
execute if score @s Level >= _ TUSB run data modify storage tusb_remake: skill_choice.description set from storage tusb_remake: list[-1].description[-1]
execute if score @s Level >= _ TUSB run data modify storage tusb_remake: skill_choice.sneak.description set from storage tusb_remake: list[-1].sneak.description[-1]
### ***************
execute if score @s Level >= _ TUSB run data modify storage tusb_remake: skill_choice.duration set from storage tusb_remake: list[-1].duration[-1]
execute if score @s Level >= _ TUSB run data modify storage tusb_remake: skill_choice.range set from storage tusb_remake: list[-1].range[-1]
execute if score @s Level >= _ TUSB run data modify storage tusb_remake: skill_choice.sneak.range set from storage tusb_remake: list[-1].sneak.range[-1]

### 確認したものを削除
data remove storage tusb_remake: list[-1].level[-1]
data remove storage tusb_remake: list[-1].name[-1]
execute if data storage tusb_remake: list[-1].description[-2] run data remove storage tusb_remake: list[-1].description[-1]
execute if data storage tusb_remake: list[-1].sneak.description[-2] run data remove storage tusb_remake: list[-1].sneak.description[-1]
### ***************
execute if data storage tusb_remake: list[-1].duration[-2] run data remove storage tusb_remake: list[-1].duration[-1]
execute if data storage tusb_remake: list[-1].range[-2] run data remove storage tusb_remake: list[-1].range[-1]
execute if data storage tusb_remake: list[-1].sneak.range[-2] run data remove storage tusb_remake: list[-1].sneak.range[-1]

### まだ名前が記録されていない(かつ習得レベルがまだ残っていたら(安全のため))なら繰り返し
execute if data storage tusb_remake: skill_choice.name[0] if data storage tusb_remake: list[-1].level[-1] run function tusb_remake:skill/display/translate/get_name
