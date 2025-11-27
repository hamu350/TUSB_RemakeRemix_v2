#> tusb_remake:job/load/
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ロードするデータをリセット
data remove storage tusb_remake: LoadData

execute if score @s Job matches 1 run function tusb_remake:job/load/knight
execute if score @s Job matches 2 run function tusb_remake:job/load/ninja
execute if score @s Job matches 3 run function tusb_remake:job/load/archer
execute if score @s Job matches 4 run function tusb_remake:job/load/white_mage
execute if score @s Job matches 5 run function tusb_remake:job/load/black_mage
execute if score @s Job matches 6 run function tusb_remake:job/load/summoner

execute if data storage tusb_remake: LoadData store result score @s Level run data get storage tusb_remake: LoadData.Level
execute if data storage tusb_remake: LoadData store result score @s ExpToLevel run data get storage tusb_remake: LoadData.ExpToLevel

### NextExp = Level * #ExpMul
scoreboard players operation @s NextExp = @s Level
execute store result score _ NextExp run data get storage tusb_remake: Const.ExpMul
scoreboard players operation @s NextExp *= _ NextExp

### MP回復速度 100 - Level tick
scoreboard players set @s CoolTickSpan -100
scoreboard players operation @s CoolTickSpan += @s Level
scoreboard players operation @s CoolTickCounter = @s CoolTickSpan
execute if score @s CoolTickSpan matches -49.. run scoreboard players set @s CoolTickSpan -50

scoreboard players add @s MPMaxFlag 0
scoreboard players set @s ModeSkillA 0
scoreboard players set @s ModeSkillB 0
scoreboard players set @s InstantSkillA 0
scoreboard players set @s InstantSkillB 0
scoreboard players set @s CurrentMode 0
scoreboard players set @s CurrentModeCost 0
