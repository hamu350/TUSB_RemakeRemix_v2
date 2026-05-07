#> tusb_remake:button_event/reload_anvil/
# テーブルマウンテンの金床復活
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## テーブルマウンテンの無限金床生成
setblock ~ ~ ~ minecraft:air
execute align xyz unless entity @e[dx=0,type=minecraft:falling_block] run summon minecraft:falling_block ~0.5 ~0.0 ~0.5 {BlockState:{Name:"minecraft:anvil"}}
