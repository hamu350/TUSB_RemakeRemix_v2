#> tusb_remake:area/portal/tocult_colde/research_site/close
### 調査拠点跡地のワープ閉じる

data modify storage tusb_remake: portal_name set value "調査拠点跡地"
data remove storage tusb_remake: portal.tocult_colde.research_site
execute positioned 1338 96 1522 run function tusb_remake:area/portal/close

### チャンク読み込み
setblock 1697 95 1731 minecraft:air
setblock 1697 95 1731 minecraft:oak_sign[rotation=0]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
