#> tusb_remake:skill/summoner/summon_obsidian/cast
# 黒曜石を召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 1 0.6 0
particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.1 30 force

execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~-1 ~ run function tusb_remake:skill/summoner/summon_obsidian/place
