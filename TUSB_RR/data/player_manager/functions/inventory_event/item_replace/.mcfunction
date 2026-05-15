#> player_manager:inventory_event/item_replace/
# インベントリに入手したときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 古いCanPlaceOn -> "minecraft:all"
execute if entity @s[advancements={player_manager:inventory_event/item_replace={old_can_place_on_all=true}}] run function player_manager:inventory_event/item_replace/old_can_place_on_all

## ハロウィンヘッドをくりぬく！
execute if entity @s[advancements={player_manager:inventory_event/item_replace={carve_halloween=true}}] run function player_manager:inventory_event/item_replace/carve_halloween

# くてぅるあー
execute if entity @s[advancements={player_manager:inventory_event/item_replace={cthulhu_lure=true}}] run function player_manager:inventory_event/item_replace/cthulhu_lure

# エクエリ
execute if entity @s[advancements={player_manager:inventory_event/item_replace={ex_elixir=true}}] run function player_manager:inventory_event/item_replace/ekueri

# エンド剣
execute if entity @s[advancements={player_manager:inventory_event/item_replace={end_of_end=true}}] run function player_manager:inventory_event/item_replace/end_of_end

# 入れ食い8
execute if entity @s[advancements={player_manager:inventory_event/item_replace={high_lure_change=true}}] run function player_manager:inventory_event/item_replace/high_lure_change

# ネザライト全能
execute if entity @s[advancements={player_manager:inventory_event/item_replace={no_got_return=true}}] run function player_manager:inventory_event/item_replace/no_god

# レッキャロ
execute if entity @s[advancements={player_manager:inventory_event/item_replace={red_carrot=true}}] run function player_manager:inventory_event/item_replace/red_carrot

# TLE印判
execute if entity @s[advancements={player_manager:inventory_event/item_replace={tl_sign_stand=true}}] run function player_manager:inventory_event/item_replace/tl_sign_stand

# 進捗戻す
advancement revoke @s only player_manager:inventory_event/item_replace
