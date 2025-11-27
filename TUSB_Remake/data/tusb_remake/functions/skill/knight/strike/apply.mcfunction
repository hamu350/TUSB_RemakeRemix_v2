#> tusb_remake:skill/knight/strike/apply
# ストライをかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### リメイク：攻撃力上昇効果をアップ +18 +36 +60
execute if score _ ActivatedSkill matches 1020 run effect give @s minecraft:strength 60 5
execute if score _ ActivatedSkill matches 1021 run effect give @s minecraft:strength 60 11
execute if score _ ActivatedSkill matches 1022..1029 run effect give @s minecraft:strength 60 19
particle angry_villager ~ ~0.5 ~ 0.5 0.5 0.5 0 20 force
