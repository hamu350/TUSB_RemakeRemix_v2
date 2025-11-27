#> tusb_remake:skill/deaths/
# 死亡時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### サヨナラ
execute as @s[scores={CurrentMode=2240..2249}] at @s run function tusb_remake:skill/ninja/sayonara/triggered
### リレイズ
execute as @s[tag=ReRaise] at @s run function tusb_remake:skill/white_mage/raise/apply
