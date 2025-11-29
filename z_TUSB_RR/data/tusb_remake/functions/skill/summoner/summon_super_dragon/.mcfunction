#> tusb_remake:skill/summoner/summon_super_dragon/
# スーパードラゴンを召喚(6030)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 演出
playsound minecraft:entity.horse.gallop master @a[distance=..16] ~ ~ ~ 1 0.5 0
particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force

summon minecraft:horse ~ ~ ~ {CustomName:'"Super Dragon"',CustomNameVisible:true,Tags:[TypeChecked],Attributes:[{Name:"minecraft:generic.max_health",Base:0.1d},{Name:"minecraft:generic.movement_speed",Base:0.45d},{Name:"minecraft:horse.jump_strength",Base:2.0d}],Health:0.1f,ActiveEffects:[{Id:8,Amplifier:10b,Duration:2147483647,ShowParticles:false}],Tame:true,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'"夢のサドル"'},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}],ForceVanishing:true}},DeathLootTable:"minecraft:empty"}
