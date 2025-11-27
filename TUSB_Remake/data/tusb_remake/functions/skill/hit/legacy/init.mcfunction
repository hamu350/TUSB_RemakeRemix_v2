#> tusb_remake:skill/hit/legacy/init
# レガシーアイテムの初期化

## 1~7を取得
data modify storage math: in set value [1,7]
function #math:dice
execute store result score _ TUSB run data get storage math: out.sum
## +3して4~10にする
execute store result storage tusb_remake: legacy int 1 run scoreboard players add _ TUSB 3
## プレイヤーの持っているアイテムに設定する
item modify entity @s weapon.mainhand tusb_remake:legacy
