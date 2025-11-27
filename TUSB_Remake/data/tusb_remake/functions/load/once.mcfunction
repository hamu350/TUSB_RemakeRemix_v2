#> tusb_remake:load/once
# 設定のリセット
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard objectives add Settings dummy "設定"
### 観光モード
scoreboard players set SightseeingDeath Settings 0
### デバッグモード
scoreboard players set Debug Settings 0
### 祈り有効モード
scoreboard players set Prayable Settings 0
### 地形破壊
scoreboard players set MobGriefing Settings 0
### 難易度
scoreboard players set Difficulty Settings 0
### 攻略対象最大数
scoreboard players set MaxPortalCount Settings 50

### ワールド初期設定
time set 14000
weather rain 15
data modify storage tusb_remake: area_name set value {underworld:"???",cloudia:"???",table_mountain:"???",gullivers_land:"???",tocult_colde:"???"}
data modify storage tusb_remake: conquer.count set value {skyland:0,nether:0,end:0,underworld:0,cloudia:0,table_mountain:0,gullivers_land:0,tocult_colde:0}
data modify storage tusb_remake: nether_boss_count set value 1
data modify storage tusb_remake: nether_boss_clear set value false

### 最初は夜固定
gamerule doDaylightCycle false
data modify storage tusb_remake: settings set value {force_night:true}

### 最初はキープインベントリなし
gamerule keepInventory false
data modify storage tusb_remake: settings.is_sightseeing set value false

### 苗木を既に入手しているかどうか
data modify storage tusb_remake: settings.saplings set value {oak:false,birch:false,spruce:false,jungle:false,acacia:false,dark_oak:false}

### ワープポータル初期化しておく
data remove storage tusb_remake: portal

### ゲームが始まった時刻を記録しておく
execute store result storage tusb_remake: start_time int 1 run time query gametime

### スキルスロットのタイトルを設定
data modify storage tusb_remake: skill_slot_titles set value {instant:{a:'[{"text":"サポートアクション","color":"yellow"},{"text":"-ルビー-","color":"red"}]',b:'[{"text":"サポートアクション","color":"yellow"},{"text":"-サファイア-","color":"dark_aqua"}]'},mode:{a:'[{"text":"モードスキル","color":"yellow"},{"text":"-ルビー-","color":"red"}]',b:'[{"text":"モードスキル","color":"yellow"},{"text":"-サファイア-","color":"dark_aqua"}]'}}

# execute in minecraft:overworld positioned -1896.000000 118.000000 -136.000000 run summon minecraft:marker ~ ~ ~ {CustomName:'"システムマーカー"',UUID:[I;0,1,0,1]}
