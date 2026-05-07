#> core:clock/min
# １分毎に実行したいもの
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 牧師さんからヒントを聞くフラグ
    scoreboard players set @a PastorFlag 0

# 動物誘導イベントのタイマーを経過させる
    scoreboard players remove @e[tag=VillagerMeal] Freshness 1

# 難易度調整
    function core:set_difficulty/

# 秒数をリセット
    scoreboard players set #SecCount Global 1

# 嫌な予感のタイマー処理
    function world_manager:event/rank/
