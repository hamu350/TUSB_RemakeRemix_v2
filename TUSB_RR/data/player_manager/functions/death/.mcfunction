#> player_manager:death/
# プレイヤーが死んだときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 満腹度を記録する
scoreboard players operation @s Hunger = @s Food

# RR追加部分
# アイテムをぶちまける
execute unless data storage tusb_remake: settings{is_sightseeing:true} run function player_manager:death/item_drop

### 死をカウントアップ
scoreboard players add AllDeathCount DeathCount 1

# 時間計算
execute store result storage math: in int 1 run scoreboard players get @s LiveTime
function #math:clock

# 表示
tellraw @a [{"translate":"%1$sの死亡回数 : %2$s回","italic":false,"color":"red","with":[{"selector": "@s"},{"score": {"name": "@s","objective": "DeathCount"}}]}]
tellraw @a [{"translate":"%1$sの生存時間 : %2$s","italic":false,"color":"green","with":[{"selector": "@s"},{"translate":"%1$s時間%2$s分%3$s秒","italic":false,"with":[{"nbt":"out.total_hour","storage":"math:"},{"nbt":"out.minute","storage":"math:"},{"nbt":"out.second","storage":"math:"}]}]}]

# 生存時間をリセット
scoreboard players reset @s LiveTime

### ネザーアスレチック
execute as @s[predicate=world_manager:area/nether_trial] at @s run function player_manager:death/in_nether_trial

### コンテナを開いていたら閉じたことにする
execute if entity @s[advancements={close_detector:open=true}] run function #close_detector:on_closed
advancement revoke @s[advancements={close_detector:open=true}] only close_detector:open

### 死の宣告がかかっていたら消す
tag @s[tag=Doom] remove Doom
### リレイズの効果がかかっていたらレイズをかける
tag @s[tag=ReRaise] add CastRaise
tag @s[tag=ReRaise] remove ReRaise

# ハードコア死亡時
execute if data storage tusb_remake: settings{hardcore:true} run tag @s add death
execute if data storage tusb_remake: settings{hardcore:true} run gamemode spectator @s

# トカルトモード時松明付与
execute if data storage tusb_remake: settings{toculting:true} run give @s torch 32
