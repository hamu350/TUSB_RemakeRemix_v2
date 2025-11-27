#> no_sleep:respawn/check/respawn_anchor
# リスポーンアンカーのチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### もしリスポーン地点がリスポーンアンカーじゃなかったらそれを記録する
execute if data storage anywhere: {function:"no_sleep:respawn/check/respawn_anchor"} unless block ~ ~ ~ minecraft:respawn_anchor run tag @s add TeleportWorldSpawn
### リスポーンアンカーのチャージが０の場合は勝手に初期スポに飛ぶ
