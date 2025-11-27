#> tusb_remake:athletic/pattern6/start
# パターン６開始
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

fill -460 64 1206 -459 64 1207 minecraft:lime_stained_glass_pane replace #tusb_remake:stained_glass_pane

## 最初のスケジュール
execute unless data storage tusb_remake: pattern6.time in minecraft:overworld run schedule function tusb_remake:athletic/pattern6/count_up/1 2s replace
execute if data storage tusb_remake: pattern6{time:1} in minecraft:overworld run schedule function tusb_remake:athletic/pattern6/count_up/2 2s replace
execute if data storage tusb_remake: pattern6{time:2} in minecraft:overworld run schedule function tusb_remake:athletic/pattern6/count_up/3 2s replace
execute if data storage tusb_remake: pattern6{time:3} in minecraft:overworld run schedule function tusb_remake:athletic/pattern6/count_up/reset 2s replace
