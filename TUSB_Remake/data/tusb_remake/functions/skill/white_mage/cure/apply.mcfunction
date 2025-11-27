#> tusb_remake:skill/white_mage/cure/apply
### ケアルをかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

particle heart ~ ~1 ~ 0.5 0.5 0.5 0 30 force

execute if score _ ActivatedSkill matches 4200 run scoreboard players add @s HealCount 4
execute if score _ ActivatedSkill matches 4201 run scoreboard players add @s HealCount 8
execute if score _ ActivatedSkill matches 4202 run scoreboard players add @s HealCount 16
execute if score _ ActivatedSkill matches 4203 run scoreboard players add @s HealCount 24
execute if score _ ActivatedSkill matches 4204..4209 run scoreboard players add @s HealCount 40
