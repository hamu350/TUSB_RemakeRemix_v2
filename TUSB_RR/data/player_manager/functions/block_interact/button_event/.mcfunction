#> player_manager:block_interact/button_event/
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## スキル設定場の超作業台
execute unless entity @s[advancements={player_manager:block_interact/button_event={super_craft=false,super_craft2=false}}] run function player_manager:block_interact/button_event/super_craft/

## テーブルマウンテンの無限金床
execute in minecraft:overworld positioned 16 114 -2231 if block ~ ~ ~ minecraft:command_block{powered:true} positioned 16 116 -2230 run function player_manager:block_interact/button_event/reload_anvil/

## ワープクリスタルの解除を確認
function world_manager:area/portal/open_warp_crystal

advancement revoke @s only player_manager:block_interact/button_event
