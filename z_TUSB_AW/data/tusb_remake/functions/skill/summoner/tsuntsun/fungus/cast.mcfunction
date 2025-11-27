#> tusb_remake:skill/summoner/tsuntsun/fungus/cast
# つんつんを詠唱(624X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### スノーゴーレム
### 石をなげる(ダメージ)

### ウルフ
### 突進？

### アイアンゴーレム
### 飛び上がって着地の衝撃で攻撃

data modify storage tusb_remake: tsuntsun_attack set value {}

execute as @e[distance=..15,type=snow_golem,team=FriendlyTeam] at @s run function tusb_remake:skill/summoner/tsuntsun/fungus/attack/snow_golem
execute as @e[distance=..15,type=wolf,team=FriendlyTeam,nbt=!{Sitting:true}] at @s run function tusb_remake:skill/summoner/tsuntsun/fungus/attack/wolf
execute as @e[distance=..15,type=iron_golem,team=FriendlyTeam] at @s run function tusb_remake:skill/summoner/tsuntsun/fungus/attack/iron_golem

### 飛んでるやつの判定有効化
execute if data storage tusb_remake: tsuntsun_attack{snow_golem:true} run function tusb_remake:skill/projectile/
