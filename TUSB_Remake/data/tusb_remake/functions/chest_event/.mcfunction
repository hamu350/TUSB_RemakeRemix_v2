#> tusb_remake:chest_event/
# インベントリに入手したときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## テーブルマウンテンの試供品
execute unless entity @s[advancements={tusb_remake:chest_event={table_trialset_1=false,table_trialset_2=false,table_trialset_3=false}}] run function tusb_remake:chest_event/table_trialset

## スキル設定場のたまごチェスト
execute if entity @s[advancements={tusb_remake:chest_event={skill_setting_area_eggs=true}}] run function tusb_remake:chest_event/skill_setting_area_eggs

advancement revoke @s only tusb_remake:chest_event
