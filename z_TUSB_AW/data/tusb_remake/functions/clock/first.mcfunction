#> tusb_remake:clock/first
# 毎ティック最初に実行したいもの
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ワープポータル処理待ちの時はチェックする
execute as @a[tag=PortalCheck] at @s run function tusb_remake:portal/warp/

### 強制的に消したいアイテムをドロップしていたら消す(インベントリ内の場合は進捗で消す)
execute as @a[scores={Drop=1..}] at @s anchored eyes positioned ^ ^ ^ run kill @e[distance=..2,type=item,nbt={Item:{tag:{ForceVanishing:true}}}]
scoreboard players reset @a Drop

### アスレチックのバードケージでエリトラの飛べるタイミングを昔と同じにする
execute as @a[predicate=tusb_remake:bird_in_cage] run function tusb_remake:athletic/bird_cage/modify_elytra

### 魔法のブロックの共通処理
execute as @e[type=item_frame,tag=MagicBlock] at @s run function tusb_remake:skill/summoner/magic_block/check

### 不滅
# TypeCheckedされると不都合なのでここ
# 使用しても消えないようになるエンチャント
tag @a[nbt={SelectedItem:{tag:{Undying:true}}}] add Undying
execute as @a[tag=Undying] at @s unless predicate tusb_remake:open_container run function tusb_remake:clock/undying/
tag @a[tag=Undying] remove Undying
tag @a[nbt={SelectedItem:{tag:{Undying:true}}}] add Undying

# タイプ設定 新しくでてきた敵に色々設定するやつ
execute as @e[type=!#tusb_remake:ignore_type_check,type=!area_effect_cloud,tag=!TypeChecked] at @s run function tusb_remake:entity/type_check
## TODO
execute as @e[type=area_effect_cloud,tag=!TypeChecked] at @s run function tusb_remake:entity/type_check

### 削除対象のエンティティを削除する
function tusb_remake:delete/

### エリア変更判定
scoreboard players set @a[scores={USBDimension=0..},nbt={Dimension:"minecraft:the_nether"}] AreaChangeFlag -100
scoreboard players set @a[predicate=tusb_remake:area/move/end] AreaChangeFlag 110
scoreboard players set @a[scores={USBDimension=..-1},nbt={Dimension:"minecraft:overworld"}] AreaChangeFlag 0
scoreboard players set @a[scores={USBDimension=100..},nbt={Dimension:"minecraft:overworld"}] AreaChangeFlag 0
scoreboard players set @a[predicate=tusb_remake:area/move/skyland] AreaChangeFlag 0
scoreboard players set @a[predicate=tusb_remake:area/move/underworld] AreaChangeFlag 1
scoreboard players set @a[predicate=tusb_remake:area/move/cloudia] AreaChangeFlag 10
scoreboard players set @a[predicate=tusb_remake:area/move/table_mountain] AreaChangeFlag 11
scoreboard players set @a[predicate=tusb_remake:area/move/gullivers_land] AreaChangeFlag 12
scoreboard players set @a[predicate=tusb_remake:area/move/tocult_colde] AreaChangeFlag 13
scoreboard players set @a[predicate=tusb_remake:area/move/nether] AreaChangeFlag -100
scoreboard players set @a[predicate=tusb_remake:area/move/nether_trial] AreaChangeFlag -90
scoreboard players set @a[predicate=tusb_remake:area/move/nether_dungeon] AreaChangeFlag -89
### エリア変更処理
execute as @a[scores={AreaChangeFlag=-100..}] run function tusb_remake:area/move/

### ゲームモード変更
tellraw @a[gamemode=adventure,tag=!Adv,team=!] {"text":"ブロックの設置・破壊制限が解除された。","color":"dark_aqua"}
gamemode survival @a[gamemode=adventure,tag=!Adv,team=!]
tellraw @a[gamemode=survival,tag=Adv] {"text":"ブロックの設置・破壊が制限された。","color":"red"}
gamemode adventure @a[gamemode=survival,tag=Adv]

### MobGriefingの修正
execute store result storage tusb_remake: _ byte 1 run gamerule mobGriefing
execute if data storage tusb_remake: {_:false} run gamerule mobGriefing true
### ハード固定
difficulty hard

### ドロッパー島転移防止
# execute as @a[x=-2812,y=315,z=-442,dx=34,dy=10,dz=34] at @s if block ~ ~-1 ~ barrier run tp @s -2794 76 -419

