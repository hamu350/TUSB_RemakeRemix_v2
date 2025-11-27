#> tusb_remake:area/portal/the_end/stairs/close
### エンド 大階段のワープ閉じる

data modify storage tusb_remake: portal_name set value "エンド 大階段"
data remove storage tusb_remake: portal.the_end.stairs
execute positioned -702 66 26 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock -1155 148 12 minecraft:air
setblock -1155 148 12 minecraft:oak_sign[rotation=12]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
