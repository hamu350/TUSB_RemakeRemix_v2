#> tusb_remake:area/conquer/luna
# 夜をつかさどる島だった場合
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### もしもまだ昼を取り戻していなければ、メッセージを出す
execute if data storage tusb_remake: settings{force_night:true} run tellraw @a {"text":"昼を取り戻した☀","color":"gold"}
execute if data storage tusb_remake: settings{force_night:true} run time set day
execute if data storage tusb_remake: settings{force_night:true} run gamerule doDaylightCycle true

data modify storage tusb_remake: settings.force_night set value false
