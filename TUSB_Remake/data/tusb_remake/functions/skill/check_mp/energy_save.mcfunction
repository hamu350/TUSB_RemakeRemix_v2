#> tusb_remake:skill/check_mp/energy_save
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players set _ TUSB 2
scoreboard players operation @s MPConsumption /= _ TUSB

tellraw @s {"text":"エナジーセーブの効果が切れた。","color":"gold"}
tag @s remove EnergySave
