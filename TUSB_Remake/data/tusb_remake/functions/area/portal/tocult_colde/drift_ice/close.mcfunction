#> tusb_remake:area/portal/tocult_colde/drift_ice/close
### 流氷のワープ閉じる

data modify storage tusb_remake: portal_name set value "流氷"
data remove storage tusb_remake: portal.tocult_colde.drift_ice
execute positioned 1354 96 1582 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock 2411 85 2247 minecraft:air
setblock 2411 85 2247 minecraft:oak_sign[rotation=4]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
