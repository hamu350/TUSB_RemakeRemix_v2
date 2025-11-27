#> tusb_remake:area/portal/the_end/skyblock/close
### THE UNUSUAL SKYBLOCKのワープ閉じる

data modify storage tusb_remake: portal_name set value "THE UNUSUAL SKYBLOCK"
data remove storage tusb_remake: portal.the_end.skyblock
execute positioned -1186 69 8 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock -1416 114 9 minecraft:air
setblock -1416 114 9 minecraft:oak_sign[rotation=12]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
