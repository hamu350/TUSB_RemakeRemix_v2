#> tusb_remake:skill/black_mage/mana_refresh/apply
# マナリフレッシュをかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### レベル１
execute if score _ ActivatedSkill matches 5040 unless score @s ManaRefresh matches 30.. run scoreboard players set @s ManaRefresh 30
### レベル２
execute if score _ ActivatedSkill matches 5041..5049 unless score @s ManaRefresh matches 60.. run scoreboard players set @s ManaRefresh 60

particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
tellraw @s {"text":"マナリフレッシュの効果がかかった。","color":"green","hoverEvent":{"action":"show_text","value":"一定時間MPの自然回復量が増加する。"}}
