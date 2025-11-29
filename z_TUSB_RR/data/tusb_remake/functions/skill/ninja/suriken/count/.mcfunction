#> tusb_remake:skill/ninja/suriken/count/
### 最近投げた手裏剣をカウントする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @a[tag=SurikenCount] at @s run function tusb_remake:skill/ninja/suriken/count/shift

execute if entity @a[tag=SurikenCount] in minecraft:overworld run schedule function tusb_remake:skill/ninja/suriken/count/ 1t
