#> tusb_remake:enemy/skill/
# 敵のスキルやつ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 20増えていく
scoreboard players add @s MobCastTime 20
# 400を超えたらスキル発動
execute if score @s MobCastTime matches 400.. run function tusb_remake:enemy/skill/invoke
