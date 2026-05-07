#> world_manager:area/portal/set_command
# ワープクリスタルを開くコマブロを設置
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### チャンクを読み込み
function core:load_chunk
### コマブロ設置
setblock ~ ~ ~ minecraft:air
setblock ~ ~ ~ minecraft:command_block[facing=up]{Command:"/function world_manager:area/portal/open_warp_crystal"}
