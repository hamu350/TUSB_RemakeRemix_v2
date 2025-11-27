#> tusb_remake:area/portal/tocult_colde/spiral_tower/close
### 螺旋の塔のワープ閉じる

data modify storage tusb_remake: portal_name set value "螺旋の塔"
data remove storage tusb_remake: portal.tocult_colde.spiral_tower
execute positioned 1359 96 1560 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock 2259 70 1820 minecraft:air
setblock 2259 70 1820 minecraft:oak_sign[rotation=12]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
