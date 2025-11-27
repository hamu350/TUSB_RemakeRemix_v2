#> tusb_remake:area/portal/cloudia/tutorial/close
### チュートリアルのワープ閉じる

data modify storage tusb_remake: portal_name set value "クラウディア チュートリアル" 
data remove storage tusb_remake: portal.cloudia.tutorial
execute positioned -1886 113 -195 run function tusb_remake:area/portal/close

### チャンク読み込み
# execute positioned -1886 115 -187 run function tusb_remake:area/portal/set_command
setblock -1886 116 -187 minecraft:air
setblock -1886 116 -187 minecraft:oak_sign[rotation=6]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
