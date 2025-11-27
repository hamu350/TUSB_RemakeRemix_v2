#> tusb_remake:nether_boss/lightning_bolt/
# ライトニングボルト
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

## 繰り返し回数は６０
## EXtremeは倍にします。
execute if score Difficulty Option matches 0..3 run data modify storage tusb_remake: lightning_bolt_count set value 60
execute if score Difficulty Option matches 4 run data modify storage tusb_remake: lightning_bolt_count set value 120

execute in minecraft:overworld run schedule function tusb_remake:nether_boss/lightning_bolt/schedule 1t
