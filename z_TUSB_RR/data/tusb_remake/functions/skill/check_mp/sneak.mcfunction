#> tusb_remake:skill/check_mp/sneak
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players set _ TUSB 3
execute if score @s ActivatedSkill matches 1000..1009 run scoreboard players operation @s MPConsumption *= _ TUSB
execute if score @s ActivatedSkill matches 1020..1029 run scoreboard players operation @s MPConsumption *= _ TUSB
execute if score @s ActivatedSkill matches 2020..2029 run scoreboard players operation @s MPConsumption *= _ TUSB
execute if score @s ActivatedSkill matches 2060..2069 run scoreboard players operation @s MPConsumption *= _ TUSB
execute if score @s ActivatedSkill matches 3040..3049 run scoreboard players operation @s MPConsumption *= _ TUSB
execute if score @s ActivatedSkill matches 3060..3069 run scoreboard players operation @s MPConsumption *= _ TUSB
execute if score @s ActivatedSkill matches 4000..4009 run scoreboard players operation @s MPConsumption *= _ TUSB
execute if score @s ActivatedSkill matches 4200..4209 run scoreboard players operation @s MPConsumption *= _ TUSB
execute if score @s ActivatedSkill matches 5040..5049 run scoreboard players operation @s MPConsumption *= _ TUSB
execute if score @s ActivatedSkill matches 5080..5089 run scoreboard players operation @s MPConsumption *= _ TUSB
execute if score @s ActivatedSkill matches 6020..6029 run scoreboard players operation @s MPConsumption *= _ TUSB
execute if score @s ActivatedSkill matches 6200..6209 run scoreboard players operation @s MPConsumption *= _ TUSB
