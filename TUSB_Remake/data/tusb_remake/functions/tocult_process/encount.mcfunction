#> tusb_remake:tocult_process/encount
# トカルトコルデのエンカウント処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 空気じゃないところをカウント
execute store result score @s ISFEncount if blocks ~-1 ~1 ~-1 ~1 ~8 ~1 ~-1 ~1 ~-1 masked
## 全部空気だったらエンカウント処理
execute if entity @s[scores={ISFEncount=..0}] run function tusb_remake:tocult_process/encount_invoke
