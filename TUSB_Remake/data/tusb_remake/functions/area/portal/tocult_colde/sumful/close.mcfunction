#> tusb_remake:area/portal/tocult_colde/sumful/close
### スムフルのワープ閉じる

data modify storage tusb_remake: portal_name set value "スムフル"
data remove storage tusb_remake: portal.tocult_colde.sumful
execute positioned 1338 96 1598 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock 1922 68 2390 minecraft:air
setblock 1922 68 2390 minecraft:oak_sign[rotation=8]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
