#> tusb_remake:area/portal/the_end/garden/close
### エンド 植物庭園のワープ閉じる

data modify storage tusb_remake: portal_name set value "エンド 植物庭園"
data remove storage tusb_remake: portal.the_end.garden
execute positioned 107 49 -1 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock -673 66 12 minecraft:air
setblock -673 66 12 minecraft:oak_sign[rotation=12]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
