#> tusb_remake:area/move/check_item/
# エリア移動した時のアイテム持ち込み判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### エリア処理持ち込み判定 BringItemError 
scoreboard players set @s[tag=IgnoreEnderChest] EnderChestOpened 0
tag @s[tag=IgnoreEnderChest] remove IgnoreEnderChest

### テーブルマウンテンに移動した時
tag @s[scores={AreaChangeFlag=11},nbt={Inventory:[{}]},gamemode=!creative,gamemode=!spectator] add BringItemError
tag @s[scores={AreaChangeFlag=11,EnderChestOpened=1..},nbt={EnderItems:[{}]},gamemode=!creative] add BringItemError
execute store result score _ TUSB run data get storage tusb_remake: conquer.count.total
execute unless score _ TUSB matches 10.. run tag @s[scores={AreaChangeFlag=11},gamemode=!creative,gamemode=!spectator] add NotCaptureIsland
execute unless score _ TUSB matches 10.. run tellraw @s[scores={AreaChangeFlag=11},tag=NotCaptureIsland,gamemode=!creative,gamemode=!spectator] {"text": "１０島の攻略が必要です！"}
tellraw @s[scores={AreaChangeFlag=11},tag=BringItemError] [{"text":"エンダーチェスト内を含む","color":"red","bold":true},"\n",{"text":"アイテム持ち込み禁止エリアです！","color":"red","bold":true}]
tp @s[scores={AreaChangeFlag=11},tag=BringItemError] -95.0 13.5 54.5 -180 0
tp @s[scores={AreaChangeFlag=11},tag=NotCaptureIsland] -95.0 13.5 54.5 -180 0
### ネザーアスレチックに移動した時
tag @s[scores={AreaChangeFlag=-90},nbt={Inventory:[{}]},gamemode=!creative] add BringItemError
tp @s[scores={AreaChangeFlag=-90},tag=BringItemError] 1.0 22.5 27.5 180 -20
tellraw @s[scores={AreaChangeFlag=-90},tag=BringItemError] {"text":"アイテム持ち込み禁止エリアです！","color":"red","bold":true}

### 持ち込み判定処理終わり
scoreboard players set @s[tag=BringItemError] AreaChangeFlag -999
tag @s[tag=BringItemError] remove BringItemError
tag @s[tag=NotCaptureIsland] remove NotCaptureIsland
