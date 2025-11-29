#> tusb_remake:skill/archer/poof_trap/
# ニフラムトラップを召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: 持続時間を20sから15sに

### ニフラムトラップを召喚
summon minecraft:arrow ~ ~ ~ {Silent:true,damage:0d,life:900s,Tags:[TypeChecked],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:lingering_potion",Count:1b},CustomName:'"☠"',CustomNameVisible:true,Tags:[Poof,ArcherTrap,TypeChecked]}]}

### ニフラムトラップの判定を有効化
function tusb_remake:skill/archer/poof_trap/schedule/
