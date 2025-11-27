#> no_sleep:respawn/
# リスポーンしたとき
# spawnForced:false & SpawnXなどが残っている(ふさがっていない時) & ベッド(リスポーンアンカー)がない
# ⇨ 初期地点に飛ばす
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## プレイヤーのスポーン地点を確認
function #oh_my_dat:please
## 条件１、２：spawnForced:false & SpawnXなどが残っている ⇨ 初期スポに飛ばすかチェック
execute if data storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep{force:false} if data entity @s SpawnX run function no_sleep:respawn/check/

### タグがついてなかったらゲームモードを戻す
execute unless entity @s[tag=TeleportWorldSpawn] run function no_sleep:respawn/revert_gamemode
### タグがついていたら初期スポに飛ばす
execute if entity @s[tag=TeleportWorldSpawn] run schedule function no_sleep:respawn/check/teleport/ 1t append

advancement revoke @s only no_sleep:death
advancement revoke @s only no_sleep:respawn
