#> tusb_remake:skill/change/reset
# スキルを外す
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 外したいスロットのスキルを外す
execute if score @s InstantChangeA matches 99 run scoreboard players set @s InstantSkillA 0
execute if score @s InstantChangeA matches 99 run scoreboard players set @s InstantCostA 0
execute if score @s InstantChangeB matches 99 run scoreboard players set @s InstantSkillB 0
execute if score @s InstantChangeB matches 99 run scoreboard players set @s InstantCostB 0
execute if score @s ModeChangeA matches 99 run scoreboard players set @s ModeSkillA 0
execute if score @s ModeChangeA matches 99 run scoreboard players set @s ModeCostA 0
execute if score @s ModeChangeB matches 99 run scoreboard players set @s ModeSkillB 0
execute if score @s ModeChangeB matches 99 run scoreboard players set @s ModeCostB 0

tellraw @s [{"text":"スキルを","color":"green"},{"nbt":"skill_slot_title","storage":"tusb_remake:","interpret":true},"から外しました。"]
playsound item.flintandsteel.use master @s ~ ~ ~ 1 0.65 0
