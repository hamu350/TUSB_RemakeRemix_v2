#> skill:trigger/hit/
# 近接攻撃をした時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 流し斬り
execute as @s[scores={CurrentMode=1200..1209},predicate=lib:has_sword] run function skill:job_skill/knight/nagashi_giri/hit
### 薙ぎ払い
execute as @s[scores={CurrentMode=1210..1219},predicate=lib:has_sword] run function skill:job_skill/knight/nagi_harai/hit
### 魔人斬り
execute as @s[scores={CurrentMode=1240..1249},predicate=lib:has_sword] run function skill:job_skill/knight/majin_giri/hit
### 斬鉄剣
execute as @s[scores={CurrentMode=1250..1259},predicate=lib:has_sword] run function skill:job_skill/knight/zan_tetsu_ken/hit
### 連舞
execute as @s[scores={CurrentMode=2210..2219}] run function skill:job_skill/ninja/tsuremai/hit
### 瞬獄殺
execute as @s[scores={CurrentMode=2270..2279}] run function skill:job_skill/ninja/syungokusatsu/punch/hit
### 夢想
execute as @s[scores={CurrentMode=1270..1279},predicate=lib:has_sword] run function skill:job_skill/knight/musou/hit
### ブレードワルツ
execute as @s[scores={CurrentMode=1280..1289},predicate=lib:has_sword] run function skill:job_skill/knight/waltz/spell

### エンアスピル
execute as @s[scores={EnAspir=0..}] run function skill:job_skill/black_mage/enaspir/hit

### レガシー
execute if data entity @s SelectedItem.tag.Legacy run function skill:trigger/hit/legacy/

### RR:全能ノ一を使い、終わらせる。
execute as @s[predicate=player_manager:equipment/mainhand/gm_sley] run function mob_manager:boss/game_master/bossdefeat/

scoreboard players reset @s DamageDealt
scoreboard players reset @s DamageDealtAbsorbed
scoreboard players reset @s DamageDealtResisted
