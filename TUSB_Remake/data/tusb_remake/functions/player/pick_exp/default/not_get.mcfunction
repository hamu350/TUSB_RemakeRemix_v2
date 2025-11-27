#> tusb_remake:player/pick_exp/default/not_get
# 範囲外で経験値を得られなかったプレイヤーの場合
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @a {"translate":"%1$sは離れ過ぎていたため、経験値を得られなかった。","color":"red","with":[{"selector":"@a[tag=ExpTarget]"}]}
tag @a remove ExpTarget
