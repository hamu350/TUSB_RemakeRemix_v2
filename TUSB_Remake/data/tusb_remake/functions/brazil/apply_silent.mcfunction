#> tusb_remake:brazil/apply_silent
# ブラジルワープ時のサイレンス付与
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## スポナーにサイレントをつけて音バグ回避
execute in minecraft:overworld as @e[type=minecraft:spawner_minecart] run data modify entity @s Silent set value true
