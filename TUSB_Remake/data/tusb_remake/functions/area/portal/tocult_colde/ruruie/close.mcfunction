#> tusb_remake:area/portal/tocult_colde/ruruie/close
### ルルイエのワープ閉じる

data modify storage tusb_remake: portal_name set value "ルルイエ"
data remove storage tusb_remake: portal.tocult_colde.ruruie
execute positioned 1294 96 1598 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock 1048 70 2056 minecraft:air
setblock 1048 70 2056 minecraft:oak_sign[rotation=8]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
