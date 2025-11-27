#> tusb_remake:personal_locker/open/activate
# 
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 現在のスロットを取得
execute store result score _ TUSB run data get entity @s SelectedItemSlot
### テーブルならアクセスできない
tellraw @s[predicate=!tusb_remake:area/table_mountain] ["-= ",{"text":"個人ロッカー","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"利き手に持っているアイテムの位置に応じて\n異なるエンダーチェストを開けます"}}},"にアクセスします =-"]
tellraw @s[predicate=tusb_remake:area/table_mountain] ["-= ここでは",{"text":"個人ロッカー","underlined":true},"を開けません =-"]
execute if predicate tusb_remake:area/table_mountain run scoreboard players set _ TUSB 0