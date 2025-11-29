#> tusb_remake:skill/archer/stakes_fire/apply/win
### ステークスファイアで勝ち申した
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 賭けに勝った矢のデータを作成する(威力10倍)
data modify storage tusb_remake: stakes_tag set value {Tags:[Arrow,StatesFire,StakesWin,StakesChange,FlyingObject,Driftable,TypeChecked],damage:0d}
execute store result storage tusb_remake: stakes_tag.damage double 0.1 run data get entity @s damage 100

### 矢データを設定する
data modify entity @s {} merge from storage tusb_remake: stakes_tag
