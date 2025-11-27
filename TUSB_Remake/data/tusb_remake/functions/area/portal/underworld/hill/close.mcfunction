#> tusb_remake:area/portal/underworld/hill/close
### 地下キノコの山のワープ閉じる

data modify storage tusb_remake: portal_name set value "地下キノコの山"
data remove storage tusb_remake: portal.underworld.hill
execute positioned 888 16 -215 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock 1050 6 41 minecraft:air
setblock 1050 6 41 minecraft:oak_sign[rotation=4]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
