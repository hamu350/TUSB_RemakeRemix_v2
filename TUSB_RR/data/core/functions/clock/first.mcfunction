#> core:clock/first
# 毎ティック最初に実行したいもの
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# ワープポータル処理待ちの時はチェックする
    execute as @a[tag=PortalCheck] at @s run function world_manager:warp/

# 強制的に消したいアイテムをドロップしていたら消す(インベントリ内の場合は進捗で消す)
    execute as @a[scores={Drop=1..}] at @s anchored eyes positioned ^ ^ ^ run kill @e[distance=..2,type=item,nbt={Item:{tag:{ForceVanishing:true}}}]
    scoreboard players reset @a Drop

# アスレチックのバードケージでエリトラの飛べるタイミングを昔と同じにする
    execute as @a[predicate=player_manager:bird_in_cage] run function world_manager:dimension/nether/athletic/bird_cage/modify_elytra

# 魔法のブロックの共通処理
    execute as @e[type=item_frame,tag=MagicBlock] at @s run function skill:job_skill/summoner/magic_block/check

# 不滅
    # TypeCheckedされると不都合なのでここ
    # 使用しても消えないようになるエンチャント
    tag @a[nbt={SelectedItem:{tag:{Undying:true}}}] add Undying
    execute as @a[tag=Undying] at @s unless predicate player_manager:open_container run function player_manager:custom_item/undying/
    tag @a[tag=Undying] remove Undying
    tag @a[nbt={SelectedItem:{tag:{Undying:true}}}] add Undying

# TypeCheck 新しくでてきた敵に色々設定するやつ
    execute as @e[type=!#lib:ignore_type_check,type=!area_effect_cloud,tag=!TypeChecked] at @s run function mob_manager:entity/type_check
## TODO
    execute as @e[type=area_effect_cloud,tag=!TypeChecked] at @s run function mob_manager:entity/type_check

# 削除対象のエンティティを削除する
    function mob_manager:delete/

# エリア変更判定
    scoreboard players set @a[scores={USBDimension=0..},nbt={Dimension:"minecraft:the_nether"}] AreaChangeFlag -100
    scoreboard players set @a[predicate=world_manager:area/move/end] AreaChangeFlag 110
    scoreboard players set @a[scores={USBDimension=..-1},nbt={Dimension:"minecraft:overworld"}] AreaChangeFlag 0
    scoreboard players set @a[scores={USBDimension=100..},nbt={Dimension:"minecraft:overworld"}] AreaChangeFlag 0
    scoreboard players set @a[predicate=world_manager:area/move/skyland] AreaChangeFlag 0
    scoreboard players set @a[predicate=world_manager:area/move/underworld] AreaChangeFlag 1
    scoreboard players set @a[predicate=world_manager:area/move/cloudia] AreaChangeFlag 10
    scoreboard players set @a[predicate=world_manager:area/move/table_mountain] AreaChangeFlag 11
    scoreboard players set @a[predicate=world_manager:area/move/gullivers_land] AreaChangeFlag 12
    scoreboard players set @a[predicate=world_manager:area/move/tocult_colde] AreaChangeFlag 13
    scoreboard players set @a[predicate=world_manager:area/move/nether] AreaChangeFlag -100
    scoreboard players set @a[predicate=world_manager:area/move/nether_trial] AreaChangeFlag -90
    scoreboard players set @a[predicate=world_manager:area/move/nether_dungeon] AreaChangeFlag -89
# エリア変更処理
    execute as @a[scores={AreaChangeFlag=-100..}] run function world_manager:area/move/

# ゲームモード変更
    # adv→suv
        tellraw @a[gamemode=adventure,tag=!Adv,team=!] {"text":"ブロックの設置・破壊制限が解除された。","color":"dark_aqua"}
        gamemode survival @a[gamemode=adventure,tag=!Adv,team=!]
    # suv→adv
        tellraw @a[gamemode=survival,tag=Adv] {"text":"ブロックの設置・破壊が制限された。","color":"red"}
        gamemode adventure @a[gamemode=survival,tag=Adv]

# ハード固定
    difficulty hard
