#> tusb_remake:skill/knight/shinku_giri/check
# 真空斬りを発動(122X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
execute if score @s CurrentMode matches 1220..1229 if predicate tusb_remake:has_sword if score @s ShinkuGiri matches 1..10 run function tusb_remake:skill/knight/shinku_giri/triggered

scoreboard players reset @s ShinkuGiri

advancement revoke @s only tusb_remake:skill/knight/shinku_giri/check
