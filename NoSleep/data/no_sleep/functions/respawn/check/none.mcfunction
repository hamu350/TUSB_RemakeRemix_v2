#> no_sleep:respawn/check/none
# 既に無効化されたはずのリスポーン地点の場合
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### もし無効化されたはずの場所なら初期スポ行き
execute if data storage anywhere: {function:"no_sleep:respawn/check/none"} run tag @s add TeleportWorldSpawn
