#> tusb_remake:skill/knight/reactive_heal/heal
### リアクティブヒールの効果
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.88 0
particle heart ~ ~1 ~ 0.5 0.5 0.5 0 30 force

execute if score @s ActivatedSkill matches 1230 run scoreboard players add @s HealCount 4
execute if score @s ActivatedSkill matches 1231 run scoreboard players add @s HealCount 8
execute if score @s ActivatedSkill matches 1232..1239 run scoreboard players add @s HealCount 12
