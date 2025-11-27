#> tusb_remake:area/portal/tocult_colde/command_block/close
### 古代遺跡　調査コードCBのワープ閉じる

data modify storage tusb_remake: portal_name set value "古代遺跡　調査コードCB"
data remove storage tusb_remake: portal.tocult_colde.command_block
execute positioned 1294 96 1522 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock 1549 103 1349 minecraft:air
setblock 1549 103 1349 minecraft:oak_sign[rotation=0]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
