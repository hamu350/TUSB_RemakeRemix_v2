#> tusb_remake:skill/black_mage/thunder_bolt/schedule/
# サンダーボルトの範囲をテスト
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run time query gametime
execute as @e[type=arrow,tag=ThunderBolt] if score @s TUSB <= _ TUSB at @s run function tusb_remake:skill/black_mage/thunder_bolt/schedule/test
