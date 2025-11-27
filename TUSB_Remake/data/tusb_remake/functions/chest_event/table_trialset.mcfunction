#> tusb_remake:chest_event/table_trialset
# テーブルマウンテンの試供品をリセット
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## テーブルマウンテンの試供品のデータがなければ、データを取得
execute unless data storage tusb_remake: settings.table_trialset run data modify storage tusb_remake: settings.table_trialset set from block 17 18 -1831 Items

## 試供品のデータを戻す
data modify block 17 18 -1831 Items set from storage tusb_remake: settings.table_trialset
data modify block 15 18 -1833 Items set from storage tusb_remake: settings.table_trialset
data modify block 17 18 -1835 Items set from storage tusb_remake: settings.table_trialset
