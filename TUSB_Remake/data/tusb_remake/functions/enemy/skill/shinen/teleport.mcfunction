#> tusb_remake:enemy/skill/shinen/teleport
# 深淵様のスキル
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

me はテレポートを唱えた！
execute at @p run tp @s ~ ~2 ~
execute unless entity @p run effect give @s minecraft:levitation 30 0 true
