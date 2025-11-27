#> tusb_remake:athletic/reward
## 報酬部屋へのワープ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## チャンクロード
function tusb_remake:system/load_chunk
execute if block ~ ~ ~ minecraft:air run clone ~ 132 ~ ~ 132 ~ ~ ~ ~ filtered minecraft:chest
tp @s -513 138 803 90 0
clear @s
