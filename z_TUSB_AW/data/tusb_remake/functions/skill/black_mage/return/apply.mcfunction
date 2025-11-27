#> tusb_remake:skill/black_mage/return/apply
# ルーラを範囲でかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### メッセージ
tellraw @a {"translate":"%1$sにルーラの効果がかかった。","color":"green","with":[{"selector":"@a[distance=..10,gamemode=!spectator,scores={Job=1..}]"}]}

playsound entity.illusioner.prepare_mirror master @a[distance=..10,gamemode=!spectator,scores={Job=1..}] ~ ~ ~ 1.5 0.5 1

### ルーラを設定
tag @a[distance=..10,gamemode=!spectator,scores={Job=1..}] add Return

### 戻る時間を設定する
execute store result score _ ReturnTimer run time query gametime
scoreboard players add _ ReturnTimer 100
scoreboard players operation @a[distance=..10,gamemode=!spectator,scores={Job=1..}] ReturnTimer = _ ReturnTimer

### スケジュール
execute in minecraft:overworld run schedule function tusb_remake:skill/black_mage/return/schedule/ 1t
