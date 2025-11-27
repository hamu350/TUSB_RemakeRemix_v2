#> no_sleep:respawn/check/bed
# ベッドのチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### もしリスポーン地点がベッドじゃなかったらそれを記録する
execute if data storage anywhere: {function:"no_sleep:respawn/check/bed"} unless block ~ ~ ~ #minecraft:beds run tag @s add TeleportWorldSpawn
