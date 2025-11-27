#> tusb_remake:login/first_reset
# 初回ログイン時の安全なリセット
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players set @s Job 0
scoreboard players set @s HP 20
scoreboard players set @s Food 20
scoreboard players set @s MPMax 100
scoreboard players set @s ModeState 0

function #oh_my_dat:please
### 職業のデータのリセット
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData set value {Knight:{Level:0,ExpToLevel:0},Ninja:{Level:0,ExpToLevel:0},Archer:{Level:0,ExpToLevel:0},WhiteMage:{Level:0,ExpToLevel:0},BlackMage:{Level:0,ExpToLevel:0},Summoner:{Level:0,ExpToLevel:0}}
### チュートリアル既読フラグリセット
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial set value [I;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

### 乱数を設定する
function tusb_remake:random/reset

### お試しセットを有効にする
tag @s add TrialSet
### トカルトコルデ初回松明イベントを有効にする
tag @s add ISFUnreached

### 嫌な予感のランク
scoreboard players set @s EventRank -1

# 追加部分

# 予感分岐用変数初期化
data modify storage math: in set value [1,2]
function #math:dice
execute store result score @s ChooseEvent run data get storage math: out.sum 0.9999999999
# 以前は固定だったが今後は初回ログイン時にランダムで設定することとする
# scoreboard players set @s ChooseEvent 1

### 個人ロッカー
# scoreboard players set @s PersonalLocker 0

### 緩衝体力を一瞬つけて、healthのスコアボードをリセットする
effect give @s minecraft:absorption 1 0 true

### ログインの扱いにする
scoreboard players set @s LeaveGame 1
