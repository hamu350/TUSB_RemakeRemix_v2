#> tusb_remake:skill/black_mage/mana_refresh/check
# マナリフレッシュをチェックします
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players remove @s ManaRefresh 1
tellraw @s[scores={ManaRefresh=..-1}] {"text":"マナリフレッシュの効果が切れた。","color":"gold"}
scoreboard players reset @s[scores={ManaRefresh=..-1}] ManaRefresh
