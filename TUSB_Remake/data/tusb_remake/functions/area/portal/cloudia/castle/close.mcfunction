#> tusb_remake:area/portal/cloudia/castle/close
### クラウディア城へのワープ閉じる

# クリスタルのmin.min -2479 3 -129
# コマブロ -2380 75 -131

data modify storage tusb_remake: portal_name set value "クラウディア城"
data remove storage tusb_remake: portal.cloudia.castle
execute positioned -2479 3 -129 run function tusb_remake:area/portal/close

### チャンク読み込み
# execute positioned -2380 75 -131 run function tusb_remake:area/portal/set_command
setblock -2380 76 -131 minecraft:air
setblock -2380 76 -131 minecraft:oak_sign[rotation=4]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
