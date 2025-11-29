#> tusb_remake:skill/knight/reactive_heal/heal
### リアクティブヒールの効果
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound item.trident.thunder master @a[distance=..16] ~ ~ ~ 0.5 2 0
particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.15 30 force

execute if score @s ActivatedSkill matches 1260..1269 run scoreboard players add @s HealCount 15
function tusb_remake:player/clear_bad_effect
