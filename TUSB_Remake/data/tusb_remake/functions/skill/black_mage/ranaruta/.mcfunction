#> tusb_remake:skill/black_mage/ranaruta/
# ラナルータ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if data storage tusb_remake: settings{force_night:true} run tellraw @s {"text":"先に昼を取り戻さなくては…。","color":"light_purple"}
execute unless data storage tusb_remake: settings{force_night:true} run function tusb_remake:skill/black_mage/ranaruta/turn
