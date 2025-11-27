#> tusb_remake:sign_event/
# 看板との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## ハローワーク
execute if entity @s[advancements={tusb_remake:sign_event={hello_work_how_to=true}}] run function tusb_remake:sign_event/hello_work/how_to
execute if entity @s[advancements={tusb_remake:sign_event={hello_work_knight=true}}] run function tusb_remake:sign_event/hello_work/knight
execute if entity @s[advancements={tusb_remake:sign_event={hello_work_ninja=true}}] run function tusb_remake:sign_event/hello_work/ninja
execute if entity @s[advancements={tusb_remake:sign_event={hello_work_archer=true}}] run function tusb_remake:sign_event/hello_work/archer
execute if entity @s[advancements={tusb_remake:sign_event={hello_work_white_mage=true}}] run function tusb_remake:sign_event/hello_work/white_mage
execute if entity @s[advancements={tusb_remake:sign_event={hello_work_black_mage=true}}] run function tusb_remake:sign_event/hello_work/black_mage
execute if entity @s[advancements={tusb_remake:sign_event={hello_work_summoner=true}}] run function tusb_remake:sign_event/hello_work/summoner

## モードチェンジ
execute if entity @s[advancements={tusb_remake:sign_event={mode_change_ruby=true}}] run function tusb_remake:skill/display/mode/a
execute if entity @s[advancements={tusb_remake:sign_event={mode_change_sapphire=true}}] run function tusb_remake:skill/display/mode/b
## インスタントチェンジ
execute if entity @s[advancements={tusb_remake:sign_event={instant_change_ruby=true}}] run function tusb_remake:skill/display/instant/a
execute if entity @s[advancements={tusb_remake:sign_event={instant_change_sapphire=true}}] run function tusb_remake:skill/display/instant/b

## リセットMP表示
execute if entity @s[advancements={tusb_remake:sign_event={reset_mp=true}}] run function tusb_remake:player/mp/reset_display

## ヘルクライムのリセット
execute if entity @s[advancements={tusb_remake:sign_event={hell_climb=true}}] run function tusb_remake:athletic/hell_climb/start
## スピードランのリセット
execute if entity @s[advancements={tusb_remake:sign_event={speed_run=true}}] run function tusb_remake:athletic/speed_run/start
## ライクスネークのリセット
execute if entity @s[advancements={tusb_remake:sign_event={like_snake=true}}] run function tusb_remake:athletic/like_snake/start
execute if entity @s[advancements={tusb_remake:sign_event={like_snake_up=true}}] run function tusb_remake:athletic/like_snake/return

## ガリバーの大砲準備
execute if entity @s[advancements={tusb_remake:sign_event={cannon_ready=true}}] run function tusb_remake:sign_event/gullivers_land/cannon_ready

## チュートリアル４
execute if entity @s[advancements={tusb_remake:sign_event={tutorial_4=true}}] run execute positioned -1905 114 -74 store result block ~ ~ ~ Delay short 1 if data block ~ ~ ~ {Delay:0s}

## ワープクリスタル開通
execute if entity @s[advancements={tusb_remake:sign_event={old_warp_crystal=true}}] run function tusb_remake:sign_event/warp_sign/

## スキル設定場のサンドバッグ
execute if entity @s[advancements={tusb_remake:sign_event={sand_bag_zombie=true}}] run function tusb_remake:sign_event/sand_bag/zombie
execute if entity @s[advancements={tusb_remake:sign_event={sand_bag_creeper=true}}] run function tusb_remake:sign_event/sand_bag/creeper
execute if entity @s[advancements={tusb_remake:sign_event={sand_bag_skeleton=true}}] run function tusb_remake:sign_event/sand_bag/skeleton
execute unless entity @s[advancements={tusb_remake:sign_event={sand_bag_enter=false,sand_bag_enter2=false}}] run function tusb_remake:sign_event/sand_bag/enter
execute unless entity @s[advancements={tusb_remake:sign_event={sand_bag_exit=false,sand_bag_exit2=false}}] run function tusb_remake:sign_event/sand_bag/exit

## 占い師のところの占い看板
execute if entity @s[advancements={tusb_remake:sign_event={augur_fortune=true}}] run function tusb_remake:sign_event/fortune/

## テーブルマウンテンの帰還の看板
execute if entity @s[advancements={tusb_remake:sign_event={return_from_table=true}}] run function tusb_remake:sign_event/return_from_table/
execute if entity @s[advancements={tusb_remake:sign_event={unseal_table=true}}] run function tusb_remake:sign_event/unseal_table/

## 時計島の看板
execute if entity @s[advancements={tusb_remake:sign_event={clock_notice=true}}] run tellraw @s [{"text":" 大きな時計だ。目覚ましがセットされている。\n ","color":"dark_aqua"},{"text":"注意：岩盤の枠内に設置されたブロックは消える事があります。","color":"yellow","underlined":true}]

## エクストラドメインのヒント
execute if entity @s[advancements={tusb_remake:sign_event={extra_hint=true}}] run function tusb_remake:sign_event/extra_hint/
execute if entity @s[advancements={tusb_remake:sign_event={extra_hint_tutorial=true}}] run function tusb_remake:sign_event/extra_hint_tutorial/

## ライクスネークの戻るときの回復
execute if entity @s[advancements={tusb_remake:sign_event={like_snake_return=true}}] run function tusb_remake:sign_event/like_snake_return/

advancement revoke @s only tusb_remake:sign_event
