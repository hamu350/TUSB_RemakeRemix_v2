#> tusb_remake:area/portal/table_mountain/entrance/close
### テーブルマウンテン入口のワープ閉じる

# クリスタルのmin.min 55 54 -2190
# コマブロ 37 58 -2214

data modify storage tusb_remake: portal_name set value "テーブルマウンテン入口"
data remove storage tusb_remake: portal.table_mountain.happy_city
execute positioned 55 54 -2190 run function tusb_remake:area/portal/close

### チャンク読み込み
# execute positioned -2380 75 -131 run function tusb_remake:area/portal/set_command
setblock 26 115 -2213 minecraft:air
setblock 26 115 -2213 minecraft:oak_sign[rotation=14]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
