#> tusb_remake:skill/summoner/tsuntsun/carrot/apply/wolf
# ウルフによる補助をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.wolf.growl master @a[distance=..16] ~ ~ ~ 1 0.8 0
particle minecraft:angry_villager ~ ~0.5 ~ 0.5 0.5 0.5 0 5 force
### リメイク：効果量アップ
### レベル１
execute if score _ ActivatedSkill matches 6240 run effect give @s minecraft:strength 20 4 true
### レベル２
execute if score _ ActivatedSkill matches 6241..6249 run effect give @s minecraft:strength 20 9 true
