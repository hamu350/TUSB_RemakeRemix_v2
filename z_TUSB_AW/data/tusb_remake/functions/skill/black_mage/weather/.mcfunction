#> tusb_remake:skill/black_mage/weather/
# ウェザーを召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result storage tusb_remake: raining byte 1 if predicate tusb_remake:weather/rain
execute if data storage tusb_remake: {raining:true} run weather clear
execute if data storage tusb_remake: {raining:false} run weather rain
