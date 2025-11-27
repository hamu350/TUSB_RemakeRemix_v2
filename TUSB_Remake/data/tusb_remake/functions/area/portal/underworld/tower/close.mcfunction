#> tusb_remake:area/portal/underworld/tower/close
### 地下キノコの塔のワープ閉じる

data modify storage tusb_remake: portal_name set value "地下キノコの塔"
data remove storage tusb_remake: portal.underworld.tower
execute positioned 1045 6 52 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock 1263 3 209 minecraft:air
setblock 1263 3 209 minecraft:oak_sign[rotation=4]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
