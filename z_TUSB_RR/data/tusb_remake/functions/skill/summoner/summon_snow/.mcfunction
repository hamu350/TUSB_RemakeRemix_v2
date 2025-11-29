#> tusb_remake:skill/summoner/summon_snow/
# スノーを召喚(6000)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: 3分で消える

### 演出
playsound entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.4 0
particle minecraft:instant_effect ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force

### スノーを召喚
### リメイク：HP少しアップ
summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:3600,Tags:["CooldownRequired"],CustomName:'"(ペット)スノー"',CustomNameVisible:true,ArmorItems:[{id:"minecraft:snowball",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:255s},{id:"minecraft:blast_protection",lvl:10s}]}},{},{},{id:"minecraft:snowball",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Attributes:[{Name:"minecraft:generic.follow_range",Base:32d},{Name:"minecraft:generic.movement_speed",Base:0.32d},{Name:"minecraft:generic.armor",Base:10d},{Name:"generic.max_health",Base:50d}],Health:50f,Team:FriendlyTeam,DeathLootTable:"minecraft:empty"}

# ### スノーの判定を有効化
# function tusb_remake:skill/archer/decel_trap/schedule/

## 0 minecraft:protection
## 1 minecraft:fire_protection
## 2 minecraft:feather_falling
## 3 minecraft:blast_protection

## エンチャント
## -32768s - 32767s
##      0s - 255s

