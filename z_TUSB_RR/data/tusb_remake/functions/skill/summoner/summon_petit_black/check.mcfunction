#> tusb_remake:skill/summoner/summon_petit_black/check
# ぷちブラック吸い込み開始
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ぷちブラック吸い込み開始！
execute if entity @s[tag=PrePetitBlack,x_rotation=-90] run function tusb_remake:skill/summoner/summon_petit_black/black/start

### ぷちブラック発動中
execute if entity @s[tag=!PrePetitBlack] run function tusb_remake:skill/summoner/summon_petit_black/black/fall
