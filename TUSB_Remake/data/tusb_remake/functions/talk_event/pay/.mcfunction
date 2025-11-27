#> tusb_remake:talk_event/pay/
# エメラルドの支払い
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score @s ItemCount run clear @s minecraft:emerald 0
## お金が足りているかどうか
execute store result storage tusb_remake: paid byte 1 if score _ TUSB <= @s ItemCount
## お金が足りていたら支払い
execute if data storage tusb_remake: {paid:true} run function tusb_remake:talk_event/pay/success
