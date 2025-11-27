#> tusb_remake:area/conquer/total
# 攻略したとき共通
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### トータル攻略数を取得
execute store result score _ TUSB run data get storage tusb_remake: conquer.count.total
### トータル攻略数を１増やす
execute store result storage tusb_remake: conquer.count.total int 1 run scoreboard players add _ TUSB 1

# 追加部分
execute store result score _ ConquerIsland run data get storage tusb_remake: conquer.count.total
##########

### C..PctInt = 攻略数 / 最大ポータル数 * 100.00
### C..PctDec = 攻略数 / 最大ポータル数 % 100.00
execute store result score _ TUSB run data get storage tusb_remake: conquer.count.total 10000
execute store result storage math: in int 1 run scoreboard players operation _ TUSB /= MaxPortalCount Settings

### 昼を取り戻していたら攻略率に応じて時計呼び出し
execute store result score _ TUSB run data get storage math: in 0.01
execute if data storage tusb_remake: settings{force_night:false} if score _ TUSB matches 11..40 unless data storage tusb_remake: {clock_stage:1} run function tusb_remake:gimmic/clock/1
execute if data storage tusb_remake: settings{force_night:false} if score _ TUSB matches 41..70 unless data storage tusb_remake: {clock_stage:2} run function tusb_remake:gimmic/clock/2
execute if data storage tusb_remake: settings{force_night:false} if score _ TUSB matches 71.. unless data storage tusb_remake: {clock_stage:3} run function tusb_remake:gimmic/clock/3

## 数字に分割
function #math:split_number
data modify storage tusb_remake: conquer.rate set value {int:[],cent:[]}
data modify storage tusb_remake: conquer.rate.int append from storage math: out[-5]
data modify storage tusb_remake: conquer.rate.int append from storage math: out[-4]
data modify storage tusb_remake: conquer.rate.int append from storage math: out[-3]
data modify storage tusb_remake: conquer.rate.cent append from storage math: out[-2]
data modify storage tusb_remake: conquer.rate.cent append from storage math: out[-1]

## ストレージだけでNで割った余りが0かどうかをみて
## 0だったら村人を追加
execute store result storage tusb_remake: _ int 3 run data get storage tusb_remake: conquer.count.total 0.3333333334
execute store result storage tusb_remake: _ byte 1 run data modify storage tusb_remake: _ set from storage tusb_remake: conquer.count.total
execute if data storage tusb_remake: {_:false} in minecraft:overworld as @e[x=-1902,y=4,z=-81,dx=24,type=villager,tag=!ShopStaff,sort=random,limit=1] at @s run function tusb_remake:area/conquer/new_shop

# 追加部分
# 難易度に応じて秒数を増やすよ
execute if score Difficulty Option matches 1 run function time_limit:time_add/easy
execute if score Difficulty Option matches 2 run function time_limit:time_add/normal
execute if score Difficulty Option matches 3.. run function time_limit:time_add/hard