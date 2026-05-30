#> player_manager:block_interact/chest_event/
# インベントリに入手したときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## テーブルマウンテンの試供品
execute unless entity @s[advancements={player_manager:block_interact/chest_event={table_trialset_1=false,table_trialset_2=false,table_trialset_3=false}}] run function player_manager:block_interact/chest_event/table_trialset

## スキル設定場のたまごチェスト
execute if entity @s[advancements={player_manager:block_interact/chest_event={skill_setting_area_eggs=true}}] run function player_manager:block_interact/chest_event/skill_setting_area_eggs

# infinity_bossの準備部屋チェスト
execute if entity @s[advancements={player_manager:block_interact/chest_event={infinity_boss_prep_chest=true}}] run function mob_manager:boss/infinity_boss/chest/

advancement revoke @s only player_manager:block_interact/chest_event
