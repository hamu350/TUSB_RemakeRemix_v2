#> tusb_remake:area/move/
# エリア移動した時の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ディメンションの番号を設定
scoreboard players operation @s USBDimension = @s AreaChangeFlag

### エリア処理持ち込み判定 BringItemError
execute at @s run function tusb_remake:area/move/check_item/

### テーブルマウンテンに移動できたとき
tag @s[scores={AreaChangeFlag=11}] add IgnoreEnderChest

### エリアタイトル表示
title @s[scores={AreaChangeFlag=-100..}] times 30 40 40
execute if entity @s[scores={AreaChangeFlag=0}] run function tusb_remake:area/move/skyland
execute if entity @s[scores={AreaChangeFlag=1}] run function tusb_remake:area/move/underworld
execute if entity @s[scores={AreaChangeFlag=10}] run function tusb_remake:area/move/cloudia
execute if entity @s[scores={AreaChangeFlag=11}] run function tusb_remake:area/move/table_mountain
execute if entity @s[scores={AreaChangeFlag=12}] run function tusb_remake:area/move/gullivers_land
execute if entity @s[scores={AreaChangeFlag=13}] run function tusb_remake:area/move/tocult_colde
execute if entity @s[scores={AreaChangeFlag=-100}] run function tusb_remake:area/move/nether
execute if entity @s[scores={AreaChangeFlag=-90}] run function tusb_remake:area/move/nether_trial
execute if entity @s[scores={AreaChangeFlag=-89}] run function tusb_remake:area/move/nether_dungeon
execute if entity @s[scores={AreaChangeFlag=110}] run function tusb_remake:area/move/end

### エリア移動時に初期地点があった場合、そこに移動させる
### TODO: あとで座標ベタ打ちに変えた方がいいよ
execute if entity @s[scores={AreaChangeFlag=-100..}] run tp @s @e[distance=..4,tag=ViewPoint,limit=1]

### エリア移動時　スキル設定無効化
scoreboard players reset @s InstantChangeA
scoreboard players reset @s InstantChangeB
scoreboard players reset @s ModeChangeA
scoreboard players reset @s ModeChangeB

### お試しセットを渡すとこ
execute if entity @s[x=-2725,y=88,z=-382,distance=..2,scores={AreaChangeFlag=10},tag=TrialSet] run function tusb_remake:area/move/give_trialset

scoreboard players set @s AreaChangeFlag -999
