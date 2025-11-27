#> tusb_remake:area/move/check_item/
# エリア移動した時のアイテム持ち込み判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### エリア処理持ち込み判定 BringItemError 
scoreboard players set @s[tag=IgnoreEnderChest] EnderChestOpened 0
tag @s[tag=IgnoreEnderChest] remove IgnoreEnderChest

### テーブルマウンテンに移動した時
tag @s[scores={AreaChangeFlag=11},nbt={Inventory:[{}]},gamemode=!creative] add BringItemError
tag @s[scores={AreaChangeFlag=11,EnderChestOpened=1..},nbt={EnderItems:[{}]},gamemode=!creative] add BringItemError
tellraw @s[scores={AreaChangeFlag=11},tag=BringItemError] [{"text":"エンダーチェスト内を含む","color":"red","bold":true},"\n",{"text":"アイテム持ち込み禁止エリアです！","color":"red","bold":true}]
tp @s[scores={AreaChangeFlag=11},tag=BringItemError] -95.0 13.5 54.5 -180 0

### ネザーアスレチックに移動した時
tag @s[scores={AreaChangeFlag=-90},nbt={Inventory:[{}]},gamemode=!creative] add BringItemError
tp @s[scores={AreaChangeFlag=-90},tag=BringItemError] 1.0 22.5 27.5 180 -20
tellraw @s[scores={AreaChangeFlag=-90},tag=BringItemError] {"text":"アイテム持ち込み禁止エリアです！","color":"red","bold":true}

### 持ち込み判定処理終わり
scoreboard players set @s[tag=BringItemError] AreaChangeFlag -999
tag @s[tag=BringItemError] remove BringItemError
