#> tusb_remake:area/portal/tocult_colde/excavation_upper/close
### 採掘場(上)のワープ閉じる

data modify storage tusb_remake: portal_name set value "採掘場(上)"
data remove storage tusb_remake: portal.tocult_colde.excavation_upper
execute positioned 2297 83 1429 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock 2404 239 1510 minecraft:air
setblock 2404 239 1510 minecraft:oak_sign[rotation=4]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
