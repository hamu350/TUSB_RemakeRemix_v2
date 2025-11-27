#> tusb_remake:area/portal/cloudia/hello_work/close
### 職業島へのワープ閉じる

# クリスタルのmin.min -2383 77 -157
# コマブロ -1744 126 -137

data modify storage tusb_remake: portal_name set value "職業島"
data remove storage tusb_remake: portal.cloudia.hello_work
execute positioned -2383 77 -157 run function tusb_remake:area/portal/close

### チャンク読み込み
# execute positioned -1744 126 -137 run function tusb_remake:area/portal/set_command
setblock -1744 127 -137 minecraft:air
setblock -1744 127 -137 minecraft:oak_sign[rotation=4]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
