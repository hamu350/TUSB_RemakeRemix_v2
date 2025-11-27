#> tusb_remake:set_difficulty/
# 難易度調整するやつ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: speedバフのナーフ
# 1-2-3-4-4から1-1-2-2-2へ

### プレイヤー人数を取得
execute store result score Difficulty Settings if entity @a
### プレイヤー人数^2が基本の難易度補正
scoreboard players operation Difficulty Settings *= Difficulty Settings
### 観光モードじゃないときは達成率も反映する
execute store result score _ TUSB run data get storage tusb_remake: conquer.count.total 10000
execute store result storage math: in int 0.01 run scoreboard players operation _ TUSB /= MaxPortalCount Settings
execute store result score _ TUSB run data get storage math: in
execute unless data storage tusb_remake: settings{is_sightseeing:true} run scoreboard players operation Difficulty Settings += _ TUSB

data modify storage tusb_remake: difficulty_modifier set value {speed:0,resistance:0}
execute if score Difficulty Settings matches 30.. run data modify storage tusb_remake: difficulty_modifier set value {speed:1,resistance:1}
execute if score Difficulty Settings matches 70.. run data modify storage tusb_remake: difficulty_modifier set value {speed:1,resistance:2}
execute if score Difficulty Settings matches 110.. run data modify storage tusb_remake: difficulty_modifier set value {speed:2,resistance:2}
execute if score Difficulty Settings matches 150.. run data modify storage tusb_remake: difficulty_modifier set value {speed:2,resistance:3}
execute if score Difficulty Settings matches 190.. run data modify storage tusb_remake: difficulty_modifier set value {speed:2,resistance:4}
