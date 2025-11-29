#> tusb_remake:event/extreme_timer/0

# 時計島まだ変化してないよ

# イベント処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation #EventTimer Global = @s Random
function tusb_remake:random/update
scoreboard players set _ TUSB 30
scoreboard players operation #EventTimer Global %= _ TUSB
scoreboard players add #EventTimer Global 30