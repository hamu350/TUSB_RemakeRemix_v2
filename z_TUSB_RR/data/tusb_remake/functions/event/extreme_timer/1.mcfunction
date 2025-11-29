#> tusb_remake:event/extreme_timer/1

# 時計島第一形態

# イベント処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation #EventTimer Global = @s Random
function tusb_remake:random/update
scoreboard players set _ TUSB 25
scoreboard players operation #EventTimer Global %= _ TUSB
scoreboard players add #EventTimer Global 25

# 変更点、時間の変更