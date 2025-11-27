#> tusb_remake:skill/ninja/choyaku/check
### 跳躍の効果切れチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players remove @s NinjaTime 1
execute if score @s NinjaTime matches ..-1 run function tusb_remake:skill/ninja/choyaku/clear
