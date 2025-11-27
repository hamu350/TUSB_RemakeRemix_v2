#> tusb_remake:load/
# リロード時リセット
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### システムマーカーが何で動かされたか分からないので、ロード時に初期位置にずらす
execute in minecraft:overworld run tp 0-0-1-0-1 -1919.5 6.5 -191.5

### 濃い紫でスコアボードの有無を判定する
# scoreboard objectives setdisplay sidebar.team.dark_purple

### Const 今回は使いたくない！！
data modify storage tusb_remake: Const.ExpMul set value 7

### Settingsが存在していなかったら初期化する
scoreboard objectives setdisplay sidebar.team.dark_purple
execute store success storage tusb_remake: _ byte 1 run scoreboard objectives setdisplay sidebar.team.dark_purple Settings
execute if data storage tusb_remake: {_:false} run function tusb_remake:load/once

### ブロックに対する設定を予約
execute in minecraft:overworld run schedule function tusb_remake:load/block_settings 3s

### １秒タイマーをスケジュール
execute in minecraft:overworld run schedule function tusb_remake:clock/sec 1s
