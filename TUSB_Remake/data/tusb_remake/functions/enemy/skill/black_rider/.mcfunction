#> tusb_remake:enemy/skill/black_rider/
# ブラックライダーのスキル
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if score @s MobCastTime matches 0..11 run function tusb_remake:enemy/skill/black_rider/summon
execute if score @s MobCastTime matches 8..19 run function tusb_remake:enemy/skill/black_rider/magic
