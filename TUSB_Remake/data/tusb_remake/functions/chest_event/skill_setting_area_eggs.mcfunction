#> tusb_remake:chest_event/skill_setting_area_eggs
# テーブルマウンテンの試供品をリセット
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## クローンコマンドを破壊！！！
data modify block -2735 86 -383 Command set value ""

## スキルエッグチェストのデータがなければ、データを取得
execute unless data storage tusb_remake:chest_template skill_setting_area_eggs run data modify storage tusb_remake:chest_template skill_setting_area_eggs set from block -2734 88 -383 Items

## 試供品のデータを戻す
data modify block -2734 88 -383 Items set from storage tusb_remake:chest_template skill_setting_area_eggs
data modify block -2734 88 -382 Items set from storage tusb_remake:chest_template skill_setting_area_eggs
