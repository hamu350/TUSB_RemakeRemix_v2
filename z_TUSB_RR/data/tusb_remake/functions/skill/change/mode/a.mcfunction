#> tusb_remake:skill/change/mode/a
# スキル変更
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 設定するスロットの名称を取得
data modify storage tusb_remake: skill_slot_title set from storage tusb_remake: skill_slot_titles.mode.a

scoreboard players reset _ ChangeSkill
scoreboard players add @s ModeChangeA 20
execute if score @s ModeChangeA matches 20..39 run scoreboard players operation _ ChangeSkill = @s ModeChangeA
execute if score @s ModeChangeA matches 119 run function tusb_remake:skill/change/reset

execute if score _ ChangeSkill matches 0..39 if score @s Job matches 1 run function tusb_remake:skill/change/knight
execute if score _ ChangeSkill matches 0..39 if score @s Job matches 2 run function tusb_remake:skill/change/ninja
execute if score _ ChangeSkill matches 0..39 if score @s Job matches 3 run function tusb_remake:skill/change/archer
execute if score _ ChangeSkill matches 0..39 if score @s Job matches 4 run function tusb_remake:skill/change/white_mage
execute if score _ ChangeSkill matches 0..39 if score @s Job matches 5 run function tusb_remake:skill/change/black_mage
execute if score _ ChangeSkill matches 0..39 if score @s Job matches 6 run function tusb_remake:skill/change/summoner

### もしスキル設定が変更されたなら、メッセージを出す
execute if score _ ChangeSkill matches 1000.. run tellraw @s [{"text":"スキルを","color":"green"},{"nbt":"skill_slot_title","storage":"tusb_remake:","interpret":true},"に設定しました。"]
execute if score _ ChangeSkill matches 1000.. run playsound item.flintandsteel.use master @s ~ ~ ~ 1 0.65 0
execute if score _ ChangeSkill matches 1000.. run scoreboard players operation @s ShowSkill = _ ChangeSkill
execute if score _ ChangeSkill matches 1000.. run function tusb_remake:player/skill/show/

scoreboard players reset ModeChangeA
scoreboard players enable @s ModeChangeA
scoreboard players set @s ModeChangeA -1
