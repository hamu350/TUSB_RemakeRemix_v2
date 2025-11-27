#> tusb_remake:nether_boss/lightning_bolt/
# ライトニングボルト
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 繰り返し回数は６０
data modify storage tusb_remake: lightning_bolt_count set value 60

execute in minecraft:overworld run schedule function tusb_remake:nether_boss/lightning_bolt/schedule 1t
