#> tusb_remake:skill/archer/stakes_fire/schedule/fly
### ステークスファイアが飛んでいる演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[tag=StakesLose] run particle smoke ~ ~-0.3 ~ 0 0 0 0 1 force
execute if entity @s[tag=StakesWin] run particle dust 100000000 0 0 1 ~ ~-0.3 ~ 0 0 0 0 1 force

data modify storage tusb_remake: _ set value true
