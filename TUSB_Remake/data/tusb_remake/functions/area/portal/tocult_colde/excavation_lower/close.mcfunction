#> tusb_remake:area/portal/tocult_colde/excavation_lower/close
### 採掘場(下)のワープ閉じる

data modify storage tusb_remake: portal_name set value "採掘場(下)"
data remove storage tusb_remake: portal.tocult_colde.excavation_lower
execute positioned 1354 96 1538 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock 2298 73 1414 minecraft:air
setblock 2298 73 1414 minecraft:oak_sign[rotation=4]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
