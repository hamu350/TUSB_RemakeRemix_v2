#> tusb_remake:skill/archer/wild_cooking/
# ワイルドクッキング発動(303X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 料理をしたフラグをリセット
data modify storage tusb_remake: cooked_state set value "none"
function tusb_remake:skill/archer/wild_cooking/porkchop

execute if data storage tusb_remake: {cooked_state:"none"} run function tusb_remake:skill/archer/wild_cooking/result/none
execute if data storage tusb_remake: {cooked_state:"bad"} run function tusb_remake:skill/archer/wild_cooking/result/bad
execute if data storage tusb_remake: {cooked_state:"strange"} run function tusb_remake:skill/archer/wild_cooking/result/strange
execute if data storage tusb_remake: {cooked_state:"good"} run function tusb_remake:skill/archer/wild_cooking/result/good
