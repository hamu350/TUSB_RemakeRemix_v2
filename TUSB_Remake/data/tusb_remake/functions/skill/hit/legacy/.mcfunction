#> tusb_remake:skill/hit/legacy/
# レガシーアイテムの消費判定

### 普段の演出
playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.1 2 0
particle minecraft:end_rod ~ ~1.52 ~ 0.1 0.1 0.1 0.3 90 force

## もし最初の攻撃なら初期化してあげる
execute if data entity @s SelectedItem.tag{Legacy:true} run function tusb_remake:skill/hit/legacy/init

## レガシーアイテムのカウントを１減らす
execute store result storage tusb_remake: legacy int 0.9999999999 run data get entity @s SelectedItem.tag.Legacy
## プレイヤーの持っているアイテムに設定する
execute unless data storage tusb_remake: {legacy:0} run item modify entity @s weapon.mainhand tusb_remake:legacy

## もしもカウントが残りわずかなら警告メッセージを出す！
execute if data storage tusb_remake: {legacy:2} run title @s actionbar {"text":"武器が壊れそうだ！","color":"gold"}
execute if data storage tusb_remake: {legacy:1} run title @s actionbar {"text":"武器が壊れそうだ！！！","color":"red"}

## もしもカウントが０ならアイテムの数を１つ減らす
execute if data storage tusb_remake: {legacy:0} run function tusb_remake:skill/hit/legacy/break
