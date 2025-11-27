#> tusb_remake:system/load_chunk
## チャンクを読み込む
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 現在地点がforceloadされているかチェック
execute store result storage tusb_remake: _ byte 1 run forceload query ~ ~
### チャンク読み込み
forceload add ~ ~
### forceloadされていなかったチャンクだったら解除
execute if data storage tusb_remake: {_:false} run forceload remove ~ ~
