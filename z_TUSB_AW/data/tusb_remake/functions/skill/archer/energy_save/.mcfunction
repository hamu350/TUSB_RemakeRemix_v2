#> tusb_remake:skill/archer/energy_save/
# エナジーセーブ付与(306X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1.4 0

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute unless predicate tusb_remake:is_sneaking run function tusb_remake:skill/archer/energy_save/apply
execute if predicate tusb_remake:is_sneaking as @a[distance=..15] at @s run function tusb_remake:skill/archer/energy_save/apply
