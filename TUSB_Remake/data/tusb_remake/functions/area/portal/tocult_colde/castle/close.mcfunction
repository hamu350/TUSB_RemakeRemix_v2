#> tusb_remake:area/portal/tocult_colde/castle/close
### トカルト城のワープ閉じる

data modify storage tusb_remake: portal_name set value "トカルト城"
data remove storage tusb_remake: portal.tocult_colde.castle
execute positioned 1278 96 1582 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock 1381 85 2291 minecraft:air
setblock 1381 85 2291 minecraft:oak_sign[rotation=8]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
