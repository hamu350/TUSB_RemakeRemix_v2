#> tusb_remake:area/portal/table_mountain/waterway_village/close
### 地下水路の村へのワープ閉じる

# クリスタルのmin.min 31 2 -2152
# コマブロ 37 58 -2214

data modify storage tusb_remake: portal_name set value "地下水路の村"
data remove storage tusb_remake: portal.table_mountain.waterway_village
execute positioned 31 2 -2152 run function tusb_remake:area/portal/close

### チャンク読み込み
# execute positioned -2380 75 -131 run function tusb_remake:area/portal/set_command
setblock 37 59 -2214 minecraft:air
setblock 37 59 -2214 minecraft:oak_sign[rotation=8]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
