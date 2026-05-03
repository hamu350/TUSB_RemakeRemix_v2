#> tusb_remake:player/death/
# プレイヤーが死んだときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 満腹度を記録する
scoreboard players operation @s Hunger = @s Food

# RR追加部分
# アイテムをぶちまける
execute unless data storage tusb_remake: settings{is_sightseeing:true} run function tusb_remake:player/death/item_drop

### 観光モードだったら、死をカウントアップ
scoreboard players add DeathCount Settings 1

# 周回ボスなら消す
execute if entity @s[tag=InfinityBossArea] run clear @s

### ネザーアスレチック
execute as @s[predicate=tusb_remake:area/nether_trial] at @s run function tusb_remake:player/death/in_nether_trial

### コンテナを開いていたら閉じたことにする
execute if entity @s[advancements={close_detector:open=true}] run function #close_detector:on_closed
advancement revoke @s[advancements={close_detector:open=true}] only close_detector:open

### 死の宣告がかかっていたら消す
tag @s[tag=Doom] remove Doom
### リレイズの効果がかかっていたらレイズをかける
tag @s[tag=ReRaise] add CastRaise
tag @s[tag=ReRaise] remove ReRaise
