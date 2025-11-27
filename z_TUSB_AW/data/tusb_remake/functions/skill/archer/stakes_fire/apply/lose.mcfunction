#> tusb_remake:skill/archer/stakes_fire/apply/lose
### ステークスファイアで負けた
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 賭けに負けた矢のデータを作成する
data modify storage tusb_remake: stakes_tag set value {Tags:[Arrow,StatesFire,StakesLose,FlyingObject,Driftable,TypeChecked],damage:0d}

### 矢データを設定する
data modify entity @s {} merge from storage tusb_remake: stakes_tag
