#> tusb_remake:skill/change/black_mage
# 黒魔導士のスキルのレベルチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 黒魔導士なので、黒魔導士のものをコピーしてくる
data modify storage tusb_remake: change_skill_table set value {}
data modify storage tusb_remake: change_skill_table set from storage tusb_remake: skill_table.black_mage
### 
data modify storage tusb_remake: change_skill set value {}
execute if score _ ChangeSkill matches 0 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.0
execute if score _ ChangeSkill matches 1 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.1
execute if score _ ChangeSkill matches 2 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.2
execute if score _ ChangeSkill matches 3 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.3
execute if score _ ChangeSkill matches 4 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.4
execute if score _ ChangeSkill matches 5 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.5
execute if score _ ChangeSkill matches 5 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.5
execute if score _ ChangeSkill matches 6 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.6
execute if score _ ChangeSkill matches 7 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.7
execute if score _ ChangeSkill matches 8 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.8
execute if score _ ChangeSkill matches 9 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.9
execute if score _ ChangeSkill matches 20 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.20
execute if score _ ChangeSkill matches 21 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.21
execute if score _ ChangeSkill matches 22 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.22
execute if score _ ChangeSkill matches 23 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.23
execute if score _ ChangeSkill matches 24 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.24
execute if score _ ChangeSkill matches 25 run data modify storage tusb_remake: change_skill set from storage tusb_remake: change_skill_table.25

### _ ChangeSkill に設定したいスキル番号が入るようにしたい
execute store result storage tusb_remake: _ int 10 run scoreboard players add _ ChangeSkill 500
execute store result score _ ChangeSkill run data get storage tusb_remake: _

### 設定できるスキルのレベルを取得
scoreboard players set _ TUSB 0
function tusb_remake:skill/change/get_skill_level

### 設定できるスキルのレベルが０ならリセット
execute unless score _ TUSB matches 1.. run scoreboard players reset _ ChangeSkill
execute if score _ TUSB matches 1.. run scoreboard players operation _ ChangeSkill += _ TUSB
execute if score _ TUSB matches 1.. run scoreboard players remove _ ChangeSkill 1

### 設定スキルが分かった！！ので
### トリガーに合わせて設定しちゃおう！
execute if score @s InstantChangeA matches 0..19 run scoreboard players operation @s InstantSkillA = _ ChangeSkill
execute if score @s InstantChangeA matches 0..19 store result score @s InstantCostA run data get storage tusb_remake: change_skill.cost
execute if score @s InstantChangeB matches 0..19 run scoreboard players operation @s InstantSkillB = _ ChangeSkill
execute if score @s InstantChangeB matches 0..19 store result score @s InstantCostB run data get storage tusb_remake: change_skill.cost
execute if score @s ModeChangeA matches 20..39 run scoreboard players operation @s ModeSkillA = _ ChangeSkill
execute if score @s ModeChangeA matches 20..39 store result score @s ModeCostA run data get storage tusb_remake: change_skill.cost
execute if score @s ModeChangeB matches 20..39 run scoreboard players operation @s ModeSkillB = _ ChangeSkill
execute if score @s ModeChangeB matches 20..39 store result score @s ModeCostB run data get storage tusb_remake: change_skill.cost
