#> tusb_remake:skill/knight/iron_will/check_continue
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### アイアンウィル１ ⇨ 1~5回
### アイアンウィル２ ⇨ 2~9回
### リメイク：防御力と盾によるアイアンウィルの継続率ボーナスを２倍
### 防御力に応じて、継続率が良くなる
scoreboard players operation @s IronWill += @s Armor
scoreboard players operation @s IronWill += @s Armor
### 盾を持っていると、継続率が良くなる
scoreboard players add @s[predicate=tusb_remake:has_shield] IronWill 20
scoreboard players remove @s IronWill 100
tellraw @s[scores={IronWill=..0}] {"text":"アイアンウィルの効果が切れた。","color":"gold"}

function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.IronWillPos set from entity Pos
tag @s add IronWillRollback

advancement revoke @s only tusb_remake:skill/knight/iron_will/check_continue
