#> tusb_remake:skill/black_mage/candle/
# キャンドルを召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @s add Candle
### タイマーに１秒後を設定
execute store result score _ TUSB run time query gametime
execute store result score @s CandleTimer run scoreboard players add _ TUSB 20

function tusb_remake:skill/black_mage/candle/schedule/
