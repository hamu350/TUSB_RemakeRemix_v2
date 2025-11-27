#> tusb_remake:skill/summoner/summon_golem/
# ゴーレムを召喚(6060)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.ender_dragon.hurt master @a[distance=..16] ~ ~ ~ 1 0.5 0
particle minecraft:explosion ~ ~1 ~ 0.5 1 0.5 0.5 30 force

### リメイク：HP少しアップ
summon minecraft:iron_golem ~ ~ ~ {CustomName:'"(ペット)ゴーレム"',CustomNameVisible:true,ArmorItems:[{id:"minecraft:iron_ingot",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:255s},{id:"minecraft:projectile_protection",lvl:10s}]}},{},{},{id:"minecraft:snowball",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Attributes:[{Name:"minecraft:generic.follow_range",Base:32d},{Name:"minecraft:generic.movement_speed",Base:0.32d},{Name:"generic.armor",Base:20d},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.max_health",Base:100d}],Health:100f,Team:FriendlyTeam,PlayerCreated:true,DeathLootTable:"minecraft:empty"}
