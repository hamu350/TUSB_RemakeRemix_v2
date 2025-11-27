#> no_sleep:respawn/check/teleport/apply
# 初期スポに飛ばす
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 初期スポに飛ばす
tp @s ~ ~ ~
### ゲームモードを戻す
function no_sleep:respawn/revert_gamemode
### まだ無効化されていなかった場合なら、ベッドがないか塞がっています～メッセージを出す
execute unless data storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep{type:"none"} run tellraw @s {"translate":"block.minecraft.spawn.not_valid"}
### 無効化する
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.type set value "none"

tag @s remove TeleportWorldSpawn
