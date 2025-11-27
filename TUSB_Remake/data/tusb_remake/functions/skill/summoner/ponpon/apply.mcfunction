#> tusb_remake:skill/summoner/ponpon/apply
# ぽんぽんをかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 回復したペットにだけ
particle heart ~ ~1 ~ 0.5 0.5 0.5 0 20 force

### リメイク：レベル１の回復量を倍に、レベル２で緩衝体力がつくように
effect give @s minecraft:instant_health 1 2
execute if score _ ActivatedSkill matches 6231..6239 run effect give @s minecraft:absorption 60 2
