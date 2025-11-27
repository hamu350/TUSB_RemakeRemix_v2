#> tusb_remake:skill/ninja/mokuso/check
# 黙想の継続チェック(204X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 継続チェック
tag @s remove Mokuso
tag @s[scores={WalkOneCm=..5,SprintOneCm=..5,CrouchOneCm=..5}] add Mokuso

### 黙想解除
playsound minecraft:block.glass.break master @s[tag=!Mokuso] ~ ~ ~ 1 1.414
tellraw @s[tag=!Mokuso] {"text":"黙想の効果が切れた。","color":"gold"}
effect clear @s[tag=!Mokuso] minecraft:regeneration
### 黙想継続
effect give @s[tag=Mokuso] minecraft:regeneration 15 1
effect give @s[tag=Mokuso,scores={Level=43..}] minecraft:regeneration 15 2
