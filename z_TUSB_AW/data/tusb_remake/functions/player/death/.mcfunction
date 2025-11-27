#> tusb_remake:player/death/
# プレイヤーが死んだときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 満腹度を記録する
scoreboard players operation @s Hunger = @s Food

### 観光モードだったら、観光中の死をカウントアップ
execute if data storage tusb_remake: settings{is_sightseeing:true} run scoreboard players add SightseeingDeath Settings 1
### 観光モードじゃないならキープインベントリはだめ
execute unless data storage tusb_remake: settings{is_sightseeing:true} run gamerule keepInventory false
execute unless data storage tusb_remake: settings{is_sightseeing:true} run clear @s


# TLE追加部分(ﾅﾆﾓﾅｲ)

# でもボス戦だったらkeepinvを温情でつける
# これ上のclear @sも消さないとだめだなぁ()


# RR追加部分
# 共鳴アイテム回収
execute if entity @s[tag=Kyoumei] in overworld run function tusb_remake:player/death/kyoumei/

# 周回ボスなら消す
execute if data storage tusb_remake: settings{is_sightseeing:true} if entity @s[tag=InfinityBossArea] run clear @s
execute if data storage tusb_remake: settings{is_sightseeing:true} if entity @s[tag=GameMasterArea] run clear @s

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
